.class final Lcom/tencent/connect/share/a$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/open/utils/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    move-object v0, p0

    const/4 v8, 0x0

    move v1, v8

    :goto_0
    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v2, v8

    move-object v8, v2

    invoke-static {v8}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v2

    invoke-static {v8}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v2

    const/16 v9, 0x2710

    invoke-static {v8, v9}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/tmp/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v2

    invoke-static {v8}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "share2qzone_temp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v2

    const/16 v9, 0x280

    const/16 v10, 0x2710

    invoke-static {v8, v9, v10}, Lcom/tencent/connect/share/a;->a(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "openSDK_LOG.AsynScaleCompressImage"

    const-string v9, "not out of bound,not compress!"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    move-object v7, v8

    :goto_1
    move-object v8, v7

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    move v9, v1

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const-string v8, "openSDK_LOG.AsynScaleCompressImage"

    const-string v9, "out of bound, compress!"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v3

    move-object v9, v4

    move-object v10, v6

    invoke-static {v8, v9, v10}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_1

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    move-object v1, v8

    new-instance v8, Landroid/os/Bundle;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v2, v8

    move-object v8, v2

    const-string v9, "images"

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/share/a$4;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/a$4;->b:Landroid/os/Handler;

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v8

    return-void
.end method
