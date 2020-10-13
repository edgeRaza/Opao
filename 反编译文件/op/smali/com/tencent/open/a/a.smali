.class public Lcom/tencent/open/a/a;
.super Lcom/tencent/open/a/i;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/tencent/open/a/b;

.field private b:Ljava/io/FileWriter;

.field private c:Ljava/io/File;

.field private d:[C

.field private volatile e:Lcom/tencent/open/a/g;

.field private volatile f:Lcom/tencent/open/a/g;

.field private volatile g:Lcom/tencent/open/a/g;

.field private volatile h:Lcom/tencent/open/a/g;

.field private volatile i:Z

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IZLcom/tencent/open/a/h;Lcom/tencent/open/a/b;)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/open/a/i;-><init>(IZLcom/tencent/open/a/h;)V

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/tencent/open/a/a;->i:Z

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/tencent/open/a/a;->a(Lcom/tencent/open/a/b;)V

    move-object v5, v0

    new-instance v6, Lcom/tencent/open/a/g;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/tencent/open/a/g;-><init>()V

    iput-object v6, v5, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    move-object v5, v0

    new-instance v6, Lcom/tencent/open/a/g;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lcom/tencent/open/a/g;-><init>()V

    iput-object v6, v5, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v6, v5, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v6, v5, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v6}, Lcom/tencent/open/a/b;->d()I

    move-result v6

    new-array v6, v6, [C

    iput-object v6, v5, Lcom/tencent/open/a/a;->d:[C

    move-object v5, v0

    invoke-direct {v5}, Lcom/tencent/open/a/a;->g()Ljava/io/Writer;

    move-result-object v5

    move-object v5, v0

    new-instance v6, Landroid/os/HandlerThread;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-virtual {v8}, Lcom/tencent/open/a/b;->c()Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/tencent/open/a/b;->f()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v6, v5, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v6, v5, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tencent/open/a/b;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    sget v3, Lcom/tencent/open/a/c;->b:I

    const/4 v4, 0x1

    sget-object v5, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    move-object v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/open/a/a;-><init>(IZLcom/tencent/open/a/h;Lcom/tencent/open/a/b;)V

    return-void
.end method

.method private f()V
    .locals 6

    move-object v0, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    if-eq v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/tencent/open/a/a;->i:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/open/a/a;->i:Z

    move-object v3, v0

    invoke-direct {v3}, Lcom/tencent/open/a/a;->i()V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    move-object v4, v0

    invoke-direct {v4}, Lcom/tencent/open/a/a;->g()Ljava/io/Writer;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/a/a;->d:[C

    invoke-virtual {v3, v4, v5}, Lcom/tencent/open/a/g;->a(Ljava/io/Writer;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v3}, Lcom/tencent/open/a/g;->b()V

    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tencent/open/a/a;->i:Z

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v3}, Lcom/tencent/open/a/g;->b()V

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v3}, Lcom/tencent/open/a/g;->b()V

    move-object v3, v2

    throw v3
.end method

.method private g()Ljava/io/Writer;
    .locals 9

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/open/a/a;->c()Lcom/tencent/open/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/open/a/b;->a()Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    if-nez v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    move-object v3, v0

    invoke-direct {v3}, Lcom/tencent/open/a/a;->h()V

    move-object v3, v0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/a/a;->c:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v4, v3, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private h()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/a/a;->b:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private i()V
    .locals 6

    move-object v0, p0

    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v4, v3, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v4, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    :goto_0
    move-object v3, v1

    monitor-exit v3

    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->e:Lcom/tencent/open/a/g;

    iput-object v4, v3, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/a/a;->f:Lcom/tencent/open/a/g;

    iput-object v4, v3, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/g;

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method public a()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/a;->k:Landroid/os/Handler;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    return-void
.end method

.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v0

    invoke-virtual {v9}, Lcom/tencent/open/a/a;->e()Lcom/tencent/open/a/h;

    move-result-object v9

    move v10, v1

    move-object v11, v2

    move-wide v12, v3

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v9 .. v16}, Lcom/tencent/open/a/h;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v0

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/tencent/open/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/open/a/b;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/a;->a:Lcom/tencent/open/a/b;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;)I

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/g;

    invoke-virtual {v2}, Lcom/tencent/open/a/g;->a()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/open/a/a;->c()Lcom/tencent/open/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/open/a/b;->d()I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/open/a/a;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/open/a/a;->h()V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/a;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    move-result v1

    return-void
.end method

.method public c()Lcom/tencent/open/a/b;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/a;->a:Lcom/tencent/open/a/b;

    move-object v0, v1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v2, 0x1

    move v0, v2

    return v0

    :pswitch_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/a/a;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
