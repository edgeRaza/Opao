.class Lcom/tencent/open/b/g$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Lcom/tencent/open/b/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tencent/open/b/g$2;->a:Landroid/os/Bundle;

    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/tencent/open/b/g$2;->b:Z

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    move-object v0, p0

    :try_start_0
    new-instance v7, Landroid/os/Bundle;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v1, v7

    move-object v7, v1

    const-string v8, "uin"

    const-string v9, "1000"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "imei"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "imsi"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "android_id"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "mac"

    invoke-static {}, Lcom/tencent/open/b/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "platform"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "os_ver"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "position"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "network"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "language"

    invoke-static {}, Lcom/tencent/open/b/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "resolution"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "apn"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "model_name"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "timezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "sdk_ver"

    const-string v9, "3.3.0.lite"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "qz_ver"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.qzone"

    invoke-static {v9, v10}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "qq_ver"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.tencent.mobileqq"

    invoke-static {v9, v10}, Lcom/tencent/open/utils/k;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "qua"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "packagename"

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "app_ver"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->a:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/b/g$2;->a:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    new-instance v7, Lcom/tencent/open/b/b;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/tencent/open/b/b;-><init>(Landroid/os/Bundle;)V

    move-object v2, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    iget-object v7, v7, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    move-object v8, v2

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    iget-object v7, v7, Lcom/tencent/open/b/g;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v7

    const-string v8, "Agent_ReportTimeInterval"

    invoke-virtual {v7, v8}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    move v7, v4

    if-nez v7, :cond_3

    const/16 v7, 0x2710

    :goto_0
    move v4, v7

    const/16 v7, 0x3e9

    move v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    const-string v8, "report_via"

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v0

    iget-boolean v7, v7, Lcom/tencent/open/b/g$2;->b:Z

    if-eqz v7, :cond_4

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    invoke-virtual {v7}, Lcom/tencent/open/b/g;->e()V

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    iget-object v7, v7, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v7, v4

    goto :goto_0

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    iget-object v7, v7, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    move v8, v5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    move v8, v5

    iput v8, v7, Landroid/os/Message;->what:I

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/b/g$2;->c:Lcom/tencent/open/b/g;

    iget-object v7, v7, Lcom/tencent/open/b/g;->f:Landroid/os/Handler;

    move-object v8, v6

    move v9, v4

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v1, v7

    const-string v7, "openSDK_LOG.ReportManager"

    const-string v8, "--> reporVia, exception in sub thread."

    move-object v9, v1

    invoke-static {v7, v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
