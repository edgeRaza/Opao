.class Lcom/tencent/connect/auth/a$c;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/a;

.field private b:Lcom/tencent/connect/auth/a$b;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/a;Lcom/tencent/connect/auth/a$b;Landroid/os/Looper;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/connect/auth/a$c;->a:Lcom/tencent/connect/auth/a;

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tencent/connect/auth/a$c;->b:Lcom/tencent/connect/auth/a$b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a$c;->b:Lcom/tencent/connect/auth/a$b;

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/a$b;->a(Lcom/tencent/connect/auth/a$b;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a$c;->b:Lcom/tencent/connect/auth/a$b;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/a$b;->onCancel()V

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a$c;->a:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;)Landroid/content/Context;

    move-result-object v2

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/connect/auth/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
