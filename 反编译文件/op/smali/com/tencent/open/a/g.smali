.class public Lcom/tencent/open/a/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/open/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/open/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, v1, Lcom/tencent/open/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v1, v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v1, Lcom/tencent/open/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public a(Ljava/io/Writer;[C)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v2

    if-eqz v12, :cond_0

    move-object v12, v2

    array-length v12, v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x0

    move v3, v12

    const/4 v12, 0x0

    move v4, v12

    const/4 v12, 0x0

    move v5, v12

    const/4 v12, 0x0

    move v6, v12

    move-object v12, v2

    array-length v12, v12

    move v7, v12

    move v12, v7

    move v8, v12

    const/4 v12, 0x0

    move v9, v12

    move-object v12, v0

    invoke-virtual {v12}, Lcom/tencent/open/a/g;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v10, v12

    :goto_1
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    const/4 v12, 0x0

    move v5, v12

    move-object v12, v11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v4, v12

    move v12, v4

    move v3, v12

    :cond_2
    :goto_2
    move v12, v3

    if-lez v12, :cond_4

    move v12, v8

    move v13, v3

    if-le v12, v13, :cond_3

    move v12, v3

    :goto_3
    move v6, v12

    move-object v12, v11

    move v13, v5

    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move-object v15, v2

    move/from16 v16, v9

    invoke-virtual/range {v12 .. v16}, Ljava/lang/String;->getChars(II[CI)V

    move v12, v8

    move v13, v6

    sub-int/2addr v12, v13

    move v8, v12

    move v12, v9

    move v13, v6

    add-int/2addr v12, v13

    move v9, v12

    move v12, v3

    move v13, v6

    sub-int/2addr v12, v13

    move v3, v12

    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    move v12, v8

    if-nez v12, :cond_2

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/Writer;->write([CII)V

    const/4 v12, 0x0

    move v9, v12

    move v12, v7

    move v8, v12

    goto :goto_2

    :cond_3
    move v12, v8

    goto :goto_3

    :cond_4
    goto :goto_1

    :cond_5
    move v12, v9

    if-lez v12, :cond_6

    move-object v12, v1

    move-object v13, v2

    const/4 v14, 0x0

    move v15, v9

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/Writer;->write([CII)V

    :cond_6
    move-object v12, v1

    invoke-virtual {v12}, Ljava/io/Writer;->flush()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/g;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/a/g;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
