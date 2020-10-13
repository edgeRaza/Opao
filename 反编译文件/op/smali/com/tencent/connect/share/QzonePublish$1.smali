.class Lcom/tencent/connect/share/QzonePublish$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/tencent/tauth/IUiListener;

.field final synthetic e:Lcom/tencent/connect/share/QzonePublish;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QzonePublish;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/connect/share/QzonePublish$1;->e:Lcom/tencent/connect/share/QzonePublish;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/tencent/connect/share/QzonePublish$1;->c:Landroid/app/Activity;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/tencent/connect/share/QzonePublish$1;->d:Lcom/tencent/tauth/IUiListener;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    move-wide v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    move v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v7, "videoPath"

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/QzonePublish$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v7, "videoDuration"

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    const-string v7, "videoSize"

    move-wide v8, v3

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QzonePublish$1;->e:Lcom/tencent/connect/share/QzonePublish;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/QzonePublish$1;->c:Landroid/app/Activity;

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/share/QzonePublish$1;->b:Landroid/os/Bundle;

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/share/QzonePublish$1;->d:Lcom/tencent/tauth/IUiListener;

    invoke-static {v6, v7, v8, v9}, Lcom/tencent/connect/share/QzonePublish;->a(Lcom/tencent/connect/share/QzonePublish;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const-string v6, "openSDK_LOG.QzonePublish"

    const-string v7, "publishToQzone() --end"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
