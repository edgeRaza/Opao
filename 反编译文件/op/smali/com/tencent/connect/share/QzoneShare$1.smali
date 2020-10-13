.class Lcom/tencent/connect/share/QzoneShare$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/tencent/connect/share/QzoneShare;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QzoneShare;Lcom/tencent/tauth/IUiListener;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/tencent/connect/share/QzoneShare$1;->d:Lcom/tencent/connect/share/QzoneShare;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/tencent/connect/share/QzoneShare$1;->a:Lcom/tencent/tauth/IUiListener;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/tencent/connect/share/QzoneShare$1;->b:Landroid/os/Bundle;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/tencent/connect/share/QzoneShare$1;->c:Landroid/app/Activity;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QzoneShare$1;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v4, Lcom/tencent/tauth/UiError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x6

    const-string v7, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void
.end method

.method public a(ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QzoneShare$1;->b:Landroid/os/Bundle;

    const-string v4, "imageUrl"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QzoneShare$1;->d:Lcom/tencent/connect/share/QzoneShare;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/share/QzoneShare$1;->c:Landroid/app/Activity;

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/share/QzoneShare$1;->b:Landroid/os/Bundle;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QzoneShare$1;->a:Lcom/tencent/tauth/IUiListener;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/connect/share/QzoneShare;->a(Lcom/tencent/connect/share/QzoneShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method
