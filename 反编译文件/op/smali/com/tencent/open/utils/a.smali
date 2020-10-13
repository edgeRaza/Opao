.class public final Lcom/tencent/open/utils/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/a$1;,
        Lcom/tencent/open/utils/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/tencent/open/utils/l;

.field private static final b:Lcom/tencent/open/utils/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/open/utils/l;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/32 v2, 0x6054b50

    invoke-direct {v1, v2, v3}, Lcom/tencent/open/utils/l;-><init>(J)V

    sput-object v0, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/l;

    new-instance v0, Lcom/tencent/open/utils/m;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const v2, 0x96fb

    invoke-direct {v1, v2}, Lcom/tencent/open/utils/m;-><init>(I)V

    sput-object v0, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/m;

    return-void
.end method

.method static synthetic a()Lcom/tencent/open/utils/m;
    .locals 1

    sget-object v0, Lcom/tencent/open/utils/a;->b:Lcom/tencent/open/utils/m;

    return-object v0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string v2, "channelNo"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move-object v2, v7

    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    const-string v10, "r"

    invoke-direct {v8, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    move-object v7, v2

    invoke-static {v7}, Lcom/tencent/open/utils/a;->a(Ljava/io/RandomAccessFile;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v3, v7

    const/4 v7, 0x0

    move-object v8, v3

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    move-object v8, v2

    if-eq v7, v8, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    move-object v7, v4

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v7, Lcom/tencent/open/utils/a$a;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/tencent/open/utils/a$a;-><init>(Lcom/tencent/open/utils/a$1;)V

    move-object v4, v7

    move-object v7, v4

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/tencent/open/utils/a$a;->a([B)V

    move-object v7, v4

    iget-object v7, v7, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v5, v7

    const/4 v7, 0x0

    move-object v8, v2

    if-eq v7, v8, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v6, v7

    const/4 v7, 0x0

    move-object v8, v2

    if-eq v7, v8, :cond_3

    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    move-object v7, v6

    throw v7
.end method

.method private static a(Ljava/io/RandomAccessFile;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x16

    sub-long/2addr v8, v10

    move-wide v1, v8

    move-object v8, v0

    move-wide v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v8, Lcom/tencent/open/utils/a;->a:Lcom/tencent/open/utils/l;

    invoke-virtual {v8}, Lcom/tencent/open/utils/l;->a()[B

    move-result-object v8

    move-object v3, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    move v8, v4

    move-object v9, v3

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    move v4, v8

    move v8, v4

    move-object v9, v3

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    move v4, v8

    move v8, v4

    move-object v9, v3

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    move v4, v8

    move v8, v4

    move-object v9, v3

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    move v5, v8

    :cond_0
    move v8, v5

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/zip/ZipException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "archive is not a ZIP archive"

    invoke-direct {v9, v10}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    move-object v8, v0

    move-wide v9, v1

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    move-wide v13, v9

    move-wide v9, v13

    move-wide v11, v13

    move-wide v1, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v8

    move v4, v8

    goto :goto_0

    :cond_2
    move-object v8, v0

    move-wide v9, v1

    const-wide/16 v11, 0x10

    add-long/2addr v9, v11

    const-wide/16 v11, 0x4

    add-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v8, 0x2

    new-array v8, v8, [B

    move-object v6, v8

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v8, Lcom/tencent/open/utils/m;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/tencent/open/utils/m;-><init>([B)V

    invoke-virtual {v8}, Lcom/tencent/open/utils/m;->b()I

    move-result v8

    move v7, v8

    move v8, v7

    if-nez v8, :cond_3

    const/4 v8, 0x0

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_3
    move v8, v7

    new-array v8, v8, [B

    move-object v6, v8

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    move-object v8, v6

    move-object v0, v8

    goto :goto_1
.end method
