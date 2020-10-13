.class public Lcom/tencent/open/utils/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/open/utils/c;

.field private d:J

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/utils/b$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/tencent/open/utils/b$2;-><init>(Lcom/tencent/open/utils/b;)V

    iput-object v3, v2, Lcom/tencent/open/utils/b;->f:Ljava/lang/Runnable;

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/utils/b$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/utils/b$1;-><init>(Lcom/tencent/open/utils/b;Landroid/os/Looper;)V

    iput-object v3, v2, Lcom/tencent/open/utils/b;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    move-object v0, p0

    const-string v5, "AsynLoadImg"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getbitmap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, v5

    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    move-object v3, v5

    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    move-object v5, v3

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v1, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    const-string v5, "AsynLoadImg"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image download finished."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v1

    move-object v0, v5

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v5, "AsynLoadImg"

    const-string v6, "getbitmap bmp fail---"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :catch_1
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    const-string v5, "AsynLoadImg"

    const-string v6, "getbitmap bmp fail---"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/utils/b;)Lcom/tencent/open/utils/c;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/utils/b;->b:Lcom/tencent/open/utils/c;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/open/utils/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/open/utils/b;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/utils/b;->a:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/utils/b;)Landroid/os/Handler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/utils/b;->e:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/open/utils/b;)J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/open/utils/b;->d:J

    move-wide v0, v1

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/open/utils/c;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "AsynLoadImg"

    const-string v4, "--save---"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/open/utils/b;->c:Ljava/lang/String;

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/open/utils/b;->d:J

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/b;->a:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/open/utils/b;->b:Lcom/tencent/open/utils/c;

    new-instance v3, Ljava/lang/Thread;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/utils/b;->f:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v10, Lcom/tencent/open/utils/b;->c:Ljava/lang/String;

    move-object v3, v10

    const/4 v10, 0x0

    move-object v4, v10

    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v10

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    const-string v10, "AsynLoadImg"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveFile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v6

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    new-instance v10, Ljava/io/BufferedOutputStream;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/FileOutputStream;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v7

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v10

    move-object v10, v1

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x50

    move-object v13, v4

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v10, 0x0

    move-object v4, v10

    :cond_1
    const/4 v10, 0x1

    move v0, v10

    :goto_1
    return v0

    :catch_0
    move-exception v10

    move-object v5, v10

    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v10

    move-object v5, v10

    move-object v10, v5

    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    const-string v10, "AsynLoadImg"

    const-string v11, "saveFile bmp fail---"

    move-object v12, v5

    invoke-static {v10, v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    move v6, v10

    move-object v10, v4

    if-eqz v10, :cond_2

    move-object v10, v4

    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const/4 v10, 0x0

    move-object v4, v10

    :cond_2
    move v10, v6

    move v0, v10

    goto :goto_1

    :catch_2
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v4

    if-eqz v10, :cond_3

    move-object v10, v4

    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_3
    const/4 v10, 0x0

    move-object v4, v10

    :cond_3
    move-object v10, v8

    throw v10

    :catch_3
    move-exception v10

    move-object v9, v10

    move-object v10, v9

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
