.class Lcom/tencent/open/SocialApiIml$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/SocialApiIml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/SocialApiIml;

.field private b:Lcom/tencent/tauth/IUiListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;

.field private f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
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

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml;

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/tauth/IUiListener;

    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml$a;->c:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml$a;->d:Ljava/lang/String;

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml$a;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    check-cast v5, Lorg/json/JSONObject;

    move-object v2, v5

    const/4 v5, 0x0

    move-object v3, v5

    move-object v5, v2

    :try_start_0
    const-string v6, "encry_token"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/SocialApiIml$a;->e:Landroid/os/Bundle;

    const-string v6, "encrytoken"

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml;

    invoke-static {v6}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/SocialApiIml$a;->c:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/SocialApiIml$a;->e:Landroid/os/Bundle;

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/SocialApiIml$a;->d:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/tauth/IUiListener;

    invoke-static/range {v5 .. v10}, Lcom/tencent/open/SocialApiIml;->a(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    move-object v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "openSDK_LOG.SocialApiIml"

    const-string v6, "The token get from qq or qzone is empty. Write temp token to localstorage."

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/open/SocialApiIml$a;->a:Lcom/tencent/open/SocialApiIml;

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/SocialApiIml$a;->f:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/tencent/open/SocialApiIml;->writeEncryToken(Landroid/content/Context;)V

    :cond_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    const-string v5, "openSDK_LOG.SocialApiIml"

    const-string v6, "OpenApi, EncrytokenListener() onComplete error"

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.SocialApiIml"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenApi, EncryptTokenListener() onError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-object v4, v4, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/SocialApiIml$a;->b:Lcom/tencent/tauth/IUiListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return-void
.end method
