.class final Lcom/tencent/connect/share/a$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/share/a$2;->a:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/share/a$2;->b:Landroid/os/Handler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->a:Ljava/lang/String;

    const/16 v8, 0x8c

    invoke-static {v7, v8}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v1, v7

    move-object v7, v1

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tmp/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "share2qq_temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    const/4 v7, 0x0

    move-object v5, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->a:Ljava/lang/String;

    const/16 v8, 0x8c

    const/16 v9, 0x8c

    invoke-static {v7, v8, v9}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "openSDK_LOG.AsynScaleCompressImage"

    const-string v8, "not out of bound,not compress!"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->a:Ljava/lang/String;

    move-object v5, v7

    :goto_0
    const-string v7, "openSDK_LOG.AsynScaleCompressImage"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->destFilePath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->b:Landroid/os/Handler;

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    move-object v8, v5

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->b:Landroid/os/Handler;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    :goto_1
    return-void

    :cond_0
    const-string v7, "openSDK_LOG.AsynScaleCompressImage"

    const-string v8, "out of bound,compress!"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->b:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    const/4 v8, 0x3

    iput v8, v7, Landroid/os/Message;->arg1:I

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/a$2;->b:Landroid/os/Handler;

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    goto :goto_1
.end method
