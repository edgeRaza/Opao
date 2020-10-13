.class public Lcom/tencent/open/a/d$c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/io/File;)Lcom/tencent/open/a/d$c;
    .locals 15

    move-object v0, p0

    new-instance v9, Lcom/tencent/open/a/d$c;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/tencent/open/a/d$c;-><init>()V

    move-object v1, v9

    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/tencent/open/a/d$c;->a(Ljava/io/File;)V

    new-instance v9, Landroid/os/StatFs;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    move-wide v3, v9

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    move-wide v5, v9

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    move-wide v7, v9

    move-object v9, v1

    move-wide v10, v5

    move-wide v12, v3

    mul-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/tencent/open/a/d$c;->a(J)V

    move-object v9, v1

    move-wide v10, v7

    move-wide v12, v3

    mul-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Lcom/tencent/open/a/d$c;->b(J)V

    move-object v9, v1

    move-object v0, v9

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/d$c;->a:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public a(J)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/tencent/open/a/d$c;->b:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/d$c;->a:Ljava/io/File;

    return-void
.end method

.method public b()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/open/a/d$c;->b:J

    move-wide v0, v1

    return-wide v0
.end method

.method public b(J)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/tencent/open/a/d$c;->c:J

    return-void
.end method

.method public c()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/open/a/d$c;->c:J

    move-wide v0, v1

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    move-object v0, p0

    const-string v1, "[%s : %d / %d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/open/a/d$c;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/open/a/d$c;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/open/a/d$c;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
