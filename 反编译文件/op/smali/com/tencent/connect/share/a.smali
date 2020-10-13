.class public Lcom/tencent/connect/share/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static final a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Lcom/tencent/connect/share/a;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    move v3, v5

    move v5, v3

    const/16 v6, 0x8

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    move v5, v4

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    move v5, v3

    const/4 v6, 0x7

    add-int/lit8 v5, v5, 0x7

    const/16 v6, 0x8

    div-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    mul-int/lit8 v5, v5, 0x8

    move v4, v5

    :cond_1
    move v5, v4

    move v0, v5

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    new-instance v7, Landroid/graphics/Matrix;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    move v3, v7

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v7

    move v7, v3

    move v8, v4

    if-le v7, v8, :cond_0

    move v7, v3

    :goto_0
    move v5, v7

    move v7, v1

    int-to-float v7, v7

    move v8, v5

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v6, v7

    move-object v7, v2

    move v8, v6

    move v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-result v7

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v12, v2

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, v7

    return-object v0

    :cond_0
    move v7, v4

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object v8, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v8

    move-object v8, v2

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object v8, v0

    move-object v9, v2

    :try_start_0
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v3, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v4, v8

    move-object v8, v2

    iget-boolean v8, v8, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v8, :cond_1

    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v3, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v8, v3

    move v9, v4

    if-le v8, v9, :cond_4

    move v8, v3

    :goto_2
    move v5, v8

    move-object v8, v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move v8, v5

    move v9, v1

    if-le v8, v9, :cond_3

    move-object v8, v2

    move-object v9, v2

    const/4 v10, -0x1

    move v11, v1

    move v12, v1

    mul-int/2addr v11, v12

    invoke-static {v9, v10, v11}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v9

    iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    move-object v8, v2

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v8, 0x0

    move-object v6, v8

    move-object v8, v0

    move-object v9, v2

    :try_start_1
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v6, v8

    :goto_3
    move-object v8, v6

    if-nez v8, :cond_5

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_4
    move v8, v4

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_3

    :cond_5
    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v3, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v4, v8

    move v8, v3

    move v9, v4

    if-le v8, v9, :cond_6

    move v8, v3

    :goto_4
    move v5, v8

    move v8, v5

    move v9, v1

    if-le v8, v9, :cond_7

    move-object v8, v6

    move v9, v1

    invoke-static {v8, v9}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    :cond_6
    move v8, v4

    goto :goto_4

    :cond_7
    move-object v8, v6

    move-object v0, v8

    goto/16 :goto_0
.end method

.method protected static final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    :cond_1
    move-object v7, v0

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move-object v5, v7

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v5, v7

    move-object v7, v0

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    move-object v10, v5

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    move-object v7, v5

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    move-object v7, v5

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    move-object v0, v7

    move-object v7, v4

    move-object v0, v7

    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/c;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v4, "openSDK_LOG.AsynScaleCompressImage"

    const-string v5, "scaleCompressImage"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/tencent/connect/share/a$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/share/a$1;-><init>(Landroid/os/Looper;Lcom/tencent/open/utils/c;)V

    move-object v3, v4

    new-instance v4, Ljava/lang/Thread;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Lcom/tencent/connect/share/a$2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/tencent/connect/share/a$2;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/open/utils/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/open/utils/c;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v4, "openSDK_LOG.AsynScaleCompressImage"

    const-string v5, "batchScaleCompressImage"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    if-nez v4, :cond_0

    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/tencent/open/utils/c;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/tencent/connect/share/a$3;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/share/a$3;-><init>(Landroid/os/Looper;Lcom/tencent/open/utils/c;)V

    move-object v3, v4

    new-instance v4, Ljava/lang/Thread;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    new-instance v6, Lcom/tencent/connect/share/a$4;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/tencent/connect/share/a$4;-><init>(Ljava/util/ArrayList;Landroid/os/Handler;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;II)Z
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/tencent/connect/share/a;->b(Ljava/lang/String;II)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v9, v0

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v9, v9

    move-wide v3, v9

    move-object v9, v0

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, v9

    move-wide v5, v9

    move v9, v2

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v7, v9

    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    const/16 v9, 0x80

    :goto_1
    move v8, v9

    move v9, v8

    move v10, v7

    if-ge v9, v10, :cond_2

    move v9, v7

    move v0, v9

    :goto_2
    return v0

    :cond_0
    move-wide v9, v3

    move-wide v11, v5

    mul-double/2addr v9, v11

    move v11, v2

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    goto :goto_0

    :cond_1
    move-wide v9, v3

    move v11, v1

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    move-wide v11, v5

    move v13, v1

    int-to-double v13, v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    double-to-int v9, v9

    goto :goto_1

    :cond_2
    move v9, v2

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    move v0, v9

    goto :goto_2

    :cond_3
    move v9, v1

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    move v9, v7

    move v0, v9

    goto :goto_2

    :cond_4
    move v9, v8

    move v0, v9

    goto :goto_2
.end method

.method private static final b(Ljava/lang/String;II)Z
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v3, v8

    move-object v8, v3

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object v8, v0

    move-object v9, v3

    :try_start_0
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    move-object v8, v3

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v4, v8

    move-object v8, v3

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v5, v8

    move-object v8, v3

    iget-boolean v8, v8, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v8, :cond_1

    move-object v8, v3

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move-object v8, v3

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v4, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v8, v4

    move v9, v5

    if-le v8, v9, :cond_4

    move v8, v4

    :goto_2
    move v6, v8

    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_5

    move v8, v4

    :goto_3
    move v7, v8

    const-string v8, "openSDK_LOG.AsynScaleCompressImage"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "longSide="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "shortSide="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v3

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v9, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move v8, v6

    move v9, v2

    if-gt v8, v9, :cond_3

    move v8, v7

    move v9, v1

    if-le v8, v9, :cond_6

    :cond_3
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    :cond_4
    move v8, v5

    goto :goto_2

    :cond_5
    move v8, v5

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method
