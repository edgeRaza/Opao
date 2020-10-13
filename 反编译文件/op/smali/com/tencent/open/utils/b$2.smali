.class Lcom/tencent/open/utils/b$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/utils/b;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/b;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    move-object v0, p0

    const-string v8, "AsynLoadImg"

    const-string v9, "saveFileRunnable:"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v8}, Lcom/tencent/open/utils/b;->b(Lcom/tencent/open/utils/b;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share_qq_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/b;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    new-instance v8, Ljava/io/File;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v8}, Lcom/tencent/open/utils/b;->c(Lcom/tencent/open/utils/b;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    const/4 v9, 0x0

    iput v9, v8, Landroid/os/Message;->arg1:I

    move-object v8, v5

    move-object v9, v3

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v8, "AsynLoadImg"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file exists: time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v12}, Lcom/tencent/open/utils/b;->d(Lcom/tencent/open/utils/b;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v8}, Lcom/tencent/open/utils/b;->c(Lcom/tencent/open/utils/b;)Landroid/os/Handler;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v8

    return-void

    :cond_0
    const/4 v8, 0x0

    move v6, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v8}, Lcom/tencent/open/utils/b;->b(Lcom/tencent/open/utils/b;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/open/utils/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    move-object v9, v7

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/tencent/open/utils/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v8

    move v6, v8

    :goto_1
    move v8, v6

    if-eqz v8, :cond_2

    move-object v8, v5

    const/4 v9, 0x0

    iput v9, v8, Landroid/os/Message;->arg1:I

    move-object v8, v5

    move-object v9, v3

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_2
    const-string v8, "AsynLoadImg"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file not exists: download time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/utils/b$2;->a:Lcom/tencent/open/utils/b;

    invoke-static {v12}, Lcom/tencent/open/utils/b;->d(Lcom/tencent/open/utils/b;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v8, "AsynLoadImg"

    const-string v9, "saveFileRunnable:get bmp fail---"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v8, v5

    const/4 v9, 0x1

    iput v9, v8, Landroid/os/Message;->arg1:I

    goto :goto_2
.end method
