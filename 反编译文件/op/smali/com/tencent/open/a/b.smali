.class public Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yy.MM.dd.HH"

    invoke-static {v0}, Lcom/tencent/open/a/d$d;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/a/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    move-object v12, v0

    const-string v13, "Tracer.File"

    iput-object v13, v12, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    move-object v12, v0

    const v13, 0x7fffffff

    iput v13, v12, Lcom/tencent/open/a/b;->c:I

    move-object v12, v0

    const v13, 0x7fffffff

    iput v13, v12, Lcom/tencent/open/a/b;->d:I

    move-object v12, v0

    const/16 v13, 0x1000

    iput v13, v12, Lcom/tencent/open/a/b;->e:I

    move-object v12, v0

    const-wide/16 v13, 0x2710

    iput-wide v13, v12, Lcom/tencent/open/a/b;->f:J

    move-object v12, v0

    const/16 v13, 0xa

    iput v13, v12, Lcom/tencent/open/a/b;->h:I

    move-object v12, v0

    const-string v13, ".log"

    iput-object v13, v12, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    move-object v12, v0

    const-wide v13, 0x7fffffffffffffffL

    iput-wide v13, v12, Lcom/tencent/open/a/b;->j:J

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->a(Ljava/io/File;)V

    move-object v12, v0

    move v13, v2

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->b(I)V

    move-object v12, v0

    move v13, v3

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->a(I)V

    move-object v12, v0

    move v13, v4

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->c(I)V

    move-object v12, v0

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;)V

    move-object v12, v0

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Lcom/tencent/open/a/b;->a(J)V

    move-object v12, v0

    move v13, v8

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->d(I)V

    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Lcom/tencent/open/a/b;->b(Ljava/lang/String;)V

    move-object v12, v0

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Lcom/tencent/open/a/b;->b(J)V

    return-void
.end method

.method private c(J)Ljava/io/File;
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/tencent/open/a/b;->b()Ljava/io/File;

    move-result-object v6

    move-object v3, v6

    const-string v6, ""

    move-object v4, v6

    move-object v6, v0

    move-object v7, v0

    move-wide v8, v1

    invoke-direct {v7, v8, v9}, Lcom/tencent/open/a/b;->d(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/open/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    :goto_0
    move-object v6, v3

    move-object v0, v6

    return-object v0

    :catch_0
    move-exception v6

    move-object v5, v6

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.tencent.mobileqq_connectSdk."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private d(J)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-wide v1, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    move-wide v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "yy.MM.dd.HH"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    move-object v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/tencent/open/a/b;->c(J)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public a(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/a/b;->c:I

    return-void
.end method

.method public a(J)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/tencent/open/a/b;->f:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/io/File;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/open/a/b;->e()Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public b(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/a/b;->d:I

    return-void
.end method

.method public b(J)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/tencent/open/a/b;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public c(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/a/b;->e:I

    return-void
.end method

.method public d()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/open/a/b;->e:I

    move v0, v1

    return v0
.end method

.method public d(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/a/b;->h:I

    return-void
.end method

.method public e()Ljava/io/File;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/b;->g:Ljava/io/File;

    move-object v0, v1

    return-object v0
.end method

.method public f()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/open/a/b;->h:I

    move v0, v1

    return v0
.end method
