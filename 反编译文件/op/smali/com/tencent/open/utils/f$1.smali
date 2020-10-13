.class Lcom/tencent/open/utils/f$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/utils/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/tencent/open/utils/f;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/f;Landroid/os/Bundle;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/f$1;->b:Lcom/tencent/open/utils/f;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/open/utils/f$1;->a:Landroid/os/Bundle;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    move-object v0, p0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/tencent/open/utils/f$1;->b:Lcom/tencent/open/utils/f;

    invoke-static {v4}, Lcom/tencent/open/utils/f;->a(Lcom/tencent/open/utils/f;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string v6, "GET"

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/utils/f$1;->a:Landroid/os/Bundle;

    invoke-static {v4, v5, v6, v7}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    iget-object v4, v4, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    move-object v2, v4

    move-object v4, v2

    invoke-static {v4}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/f$1;->b:Lcom/tencent/open/utils/f;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/tencent/open/utils/f;->a(Lcom/tencent/open/utils/f;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/f$1;->b:Lcom/tencent/open/utils/f;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tencent/open/utils/f;->a(Lcom/tencent/open/utils/f;I)I

    move-result v4

    return-void

    :catch_0
    move-exception v4

    move-object v1, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
