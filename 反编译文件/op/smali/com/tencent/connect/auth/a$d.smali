.class Lcom/tencent/connect/auth/a$d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/connect/auth/a;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/a;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/tencent/connect/auth/a$d;->a:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/auth/a$d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    move-object v0, p0

    const-string v1, "openSDK_LOG.AuthDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->timeoutUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | mRetryUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    invoke-static {v3}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a$d;->a:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    invoke-static {v2}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    invoke-static {v1}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object v1

    new-instance v2, Lcom/tencent/tauth/UiError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0x232a

    const-string v5, "\u8bf7\u6c42\u9875\u9762\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    invoke-static {v6}, Lcom/tencent/connect/auth/a;->i(Lcom/tencent/connect/auth/a;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/connect/auth/a$b;->onError(Lcom/tencent/tauth/UiError;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a$d;->b:Lcom/tencent/connect/auth/a;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/a;->dismiss()V

    :cond_0
    return-void
.end method
