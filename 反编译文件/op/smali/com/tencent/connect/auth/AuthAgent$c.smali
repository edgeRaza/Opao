.class Lcom/tencent/connect/auth/AuthAgent$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/AuthAgent;

.field private final b:Lcom/tencent/tauth/IUiListener;

.field private final c:Z

.field private final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    move-object v6, v0

    move v7, v4

    iput-boolean v7, v6, Lcom/tencent/connect/auth/AuthAgent$c;->c:Z

    const-string v6, "openSDK_LOG.AuthAgent"

    const-string v7, "OpenUi, TokenListener()"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "OpenUi, TokenListener() onCancel"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    const-string v8, "openSDK_LOG.AuthAgent"

    const-string v9, "OpenUi, TokenListener() onComplete"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lorg/json/JSONObject;

    move-object v2, v8

    move-object v8, v2

    :try_start_0
    const-string v9, "access_token"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    move-object v8, v2

    const-string v9, "expires_in"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v2

    const-string v9, "openid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v8}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    if-eqz v8, :cond_0

    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v8}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v8}, Lcom/tencent/connect/auth/AuthAgent;->c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v9}, Lcom/tencent/connect/auth/AuthAgent;->d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    :cond_0
    move-object v8, v2

    const-string v9, "pf"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_1

    move-object v8, v0

    :try_start_1
    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->d:Landroid/content/Context;

    const-string v9, "pfStore"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "pf"

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    :cond_1
    :goto_0
    move-object v8, v0

    :try_start_2
    iget-boolean v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->c:Z

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    move-object v9, v2

    invoke-interface {v8, v9}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/connect/auth/AuthAgent$c;->a:Lcom/tencent/connect/auth/AuthAgent;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/AuthAgent;->releaseResource()V

    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void

    :catch_0
    move-exception v8

    move-object v7, v8

    move-object v8, v7

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    const-string v8, "openSDK_LOG.AuthAgent"

    const-string v9, "OpenUi, TokenListener() onComplete error"

    move-object v10, v7

    invoke-static {v8, v9, v10}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v3, v8

    move-object v8, v3

    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    const-string v8, "openSDK_LOG.AuthAgent"

    const-string v9, "OpenUi, TokenListener() onComplete error"

    move-object v10, v3

    invoke-static {v8, v9, v10}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.AuthAgent"

    const-string v3, "OpenUi, TokenListener() onError"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$c;->b:Lcom/tencent/tauth/IUiListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    invoke-static {}, Lcom/tencent/open/a/f;->b()V

    return-void
.end method
