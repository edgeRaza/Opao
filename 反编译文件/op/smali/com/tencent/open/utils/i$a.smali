.class Lcom/tencent/open/utils/i$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/utils/i$1;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/utils/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 7

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    move-object v5, v1

    move-object v6, v2

    move-object v1, v6

    move-object v2, v5

    move-object v3, v6

    iput-object v3, v2, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/open/utils/i;->a:Ljava/util/concurrent/Executor;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/tencent/open/utils/i$a;->a:Ljava/util/Queue;

    new-instance v3, Lcom/tencent/open/utils/i$a$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/utils/i$a$1;-><init>(Lcom/tencent/open/utils/i$a;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/i$a;->b:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/open/utils/i$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
