.class Lcom/tencent/connect/auth/AuthAgent$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthAgent$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent$1;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$1;Landroid/app/Activity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    move-object v0, p0

    sget-boolean v2, Lcom/tencent/open/web/security/JniInterface;->isJniOk:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/tencent/connect/auth/a;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    const-string v5, "action_login"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$1;->a:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v7, v7, Lcom/tencent/connect/auth/AuthAgent$1;->b:Lcom/tencent/tauth/IUiListener;

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$1;->c:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v8}, Lcom/tencent/connect/auth/AuthAgent;->f(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/tencent/connect/auth/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/tencent/connect/auth/a;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "openSDK_LOG.AuthAgent"

    const-string v3, "OpenUi, secure so load failed, goto download QQ."

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/open/TDialog;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    const-string v5, ""

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$1;->c:Lcom/tencent/connect/auth/AuthAgent;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$1;->c:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v8}, Lcom/tencent/connect/auth/AuthAgent;->g(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_0
.end method
