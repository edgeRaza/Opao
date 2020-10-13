.class Lcom/tencent/open/utils/i$a$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/i$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tencent/open/utils/i$a;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/i$a;Ljava/lang/Runnable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/i$a$1;->b:Lcom/tencent/open/utils/i$a;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/open/utils/i$a$1;->a:Ljava/lang/Runnable;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/tencent/open/utils/i$a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/i$a$1;->b:Lcom/tencent/open/utils/i$a;

    invoke-virtual {v2}, Lcom/tencent/open/utils/i$a;->a()V

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/i$a$1;->b:Lcom/tencent/open/utils/i$a;

    invoke-virtual {v2}, Lcom/tencent/open/utils/i$a;->a()V

    move-object v2, v1

    throw v2
.end method
