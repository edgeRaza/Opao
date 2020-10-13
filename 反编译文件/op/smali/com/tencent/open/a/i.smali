.class public abstract Lcom/tencent/open/a/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private volatile a:I

.field private volatile b:Z

.field private c:Lcom/tencent/open/a/h;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    sget v2, Lcom/tencent/open/a/c;->a:I

    const/4 v3, 0x1

    sget-object v4, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/open/a/i;-><init>(IZLcom/tencent/open/a/h;)V

    return-void
.end method

.method public constructor <init>(IZLcom/tencent/open/a/h;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    sget v5, Lcom/tencent/open/a/c;->a:I

    iput v5, v4, Lcom/tencent/open/a/i;->a:I

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/tencent/open/a/i;->b:Z

    move-object v4, v0

    sget-object v5, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    iput-object v5, v4, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/tencent/open/a/i;->a(I)V

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/tencent/open/a/i;->a(Z)V

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/tencent/open/a/i;->a(Lcom/tencent/open/a/h;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/a/i;->a:I

    return-void
.end method

.method protected abstract a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public a(Lcom/tencent/open/a/h;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    return-void
.end method

.method public a(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/tencent/open/a/i;->b:Z

    return-void
.end method

.method public b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/tencent/open/a/i;->d()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    iget v8, v8, Lcom/tencent/open/a/i;->a:I

    move v9, v1

    invoke-static {v8, v9}, Lcom/tencent/open/a/d$a;->a(II)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-wide v11, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/tencent/open/a/i;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/tencent/open/a/i;->b:Z

    move v0, v1

    return v0
.end method

.method public e()Lcom/tencent/open/a/h;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    move-object v0, v1

    return-object v0
.end method
