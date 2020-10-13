.class Lcom/tencent/connect/share/QQShare$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/utils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/share/QQShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/tauth/IUiListener;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:Lcom/tencent/connect/share/QQShare;


# direct methods
.method constructor <init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->b:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->c:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/tencent/connect/share/QQShare$2;->e:Landroid/app/Activity;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    const-string v4, "imageLocalUrl"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/share/QQShare$2;->e:Landroid/app/Activity;

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/share/QQShare$2;->a:Landroid/os/Bundle;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/connect/share/QQShare;->a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/share/QQShare$2;->d:Lcom/tencent/tauth/IUiListener;

    new-instance v4, Lcom/tencent/tauth/UiError;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    const/4 v6, -0x6

    const-string v7, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v3, "openSDK_LOG.QQShare"

    const-string v4, "shareToMobileQQ -- error: \u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SHARE_CHECK_SDK"

    const-string v6, "1000"

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/share/QQShare$2;->f:Lcom/tencent/connect/share/QQShare;

    invoke-static {v7}, Lcom/tencent/connect/share/QQShare;->b(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-virtual/range {v3 .. v12}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
