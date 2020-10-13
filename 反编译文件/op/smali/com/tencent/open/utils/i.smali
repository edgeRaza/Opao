.class public final Lcom/tencent/open/utils/i;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/i$1;,
        Lcom/tencent/open/utils/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field private static b:Ljava/lang/Object;

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/open/utils/i;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/open/utils/i;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/i;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 6

    sget-object v2, Lcom/tencent/open/utils/i;->c:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-class v2, Lcom/tencent/open/utils/i;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v0, v3

    monitor-enter v2

    :try_start_0
    new-instance v2, Landroid/os/HandlerThread;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "SDK_SUB"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tencent/open/utils/i;->d:Landroid/os/HandlerThread;

    sget-object v2, Lcom/tencent/open/utils/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/tencent/open/utils/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tencent/open/utils/i;->c:Landroid/os/Handler;

    move-object v2, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v2, Lcom/tencent/open/utils/i;->c:Landroid/os/Handler;

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

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    move-object v0, p0

    invoke-static {}, Lcom/tencent/open/utils/i;->a()Landroid/os/Handler;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return-void
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 4

    new-instance v0, Lcom/tencent/open/utils/i$a;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/open/utils/i$a;-><init>(Lcom/tencent/open/utils/i$1;)V

    return-object v0
.end method

.method private static c()Ljava/util/concurrent/Executor;
    .locals 13

    const/4 v3, 0x0

    move-object v0, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v0, v3

    :goto_0
    move-object v3, v0

    instance-of v3, v3, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_0
    move-object v3, v0

    move-object v0, v3

    return-object v0

    :cond_1
    const/4 v3, 0x0

    move-object v1, v3

    :try_start_0
    const-class v3, Landroid/os/AsyncTask;

    const-string v4, "sExecutor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v1, v3

    goto :goto_1
.end method
