.class Lcom/tencent/connect/auth/AuthAgent$a;
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
    name = "a"
.end annotation


# instance fields
.field a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$a;->b:Lcom/tencent/connect/auth/AuthAgent;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    const-string v6, "openSDK_LOG.AuthAgent"

    const-string v7, "CheckLoginListener response data is null"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v1

    check-cast v6, Lorg/json/JSONObject;

    move-object v2, v6

    move-object v6, v2

    :try_start_0
    const-string v7, "ret"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    move v6, v3

    if-nez v6, :cond_2

    const-string v6, "success"

    :goto_1
    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    new-instance v7, Lorg/json/JSONObject;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "ret"

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "msg"

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    goto :goto_0

    :cond_2
    move-object v6, v2

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v5, v6

    move-object v6, v5

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    const-string v6, "openSDK_LOG.AuthAgent"

    const-string v7, "CheckLoginListener response data format error"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$a;->a:Lcom/tencent/tauth/IUiListener;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    return-void
.end method
