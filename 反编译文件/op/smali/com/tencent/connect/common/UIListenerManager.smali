.class public Lcom/tencent/connect/common/UIListenerManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/UIListenerManager$ApiTask;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/connect/common/UIListenerManager;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/common/UIListenerManager$ApiTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private a(ILcom/tencent/tauth/IUiListener;)Lcom/tencent/tauth/IUiListener;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v3, v4

    move v4, v1

    const/16 v5, 0x2b5d

    if-ne v4, v5, :cond_1

    const-string v4, "openSDK_LOG.UIListenerManager"

    const-string v5, "\u767b\u5f55\u7684\u63a5\u53e3\u56de\u8c03\u4e0d\u80fd\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    :cond_1
    move v4, v1

    const/16 v5, 0x2b61

    if-ne v4, v5, :cond_2

    const-string v4, "openSDK_LOG.UIListenerManager"

    const-string v5, "Social Api \u7684\u63a5\u53e3\u56de\u8c03\u9700\u8981\u4f7f\u7528param\u6765\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, v1

    const/16 v5, 0x2b62

    if-ne v4, v5, :cond_0

    const-string v4, "openSDK_LOG.UIListenerManager"

    const-string v5, "Social Api \u7684H5\u63a5\u53e3\u56de\u8c03\u9700\u8981\u4f7f\u7528param\u6765\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/connect/common/UIListenerManager;
    .locals 3

    sget-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/connect/common/UIListenerManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/tencent/connect/common/UIListenerManager;-><init>()V

    sput-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    :cond_0
    sget-object v0, Lcom/tencent/connect/common/UIListenerManager;->a:Lcom/tencent/connect/common/UIListenerManager;

    return-object v0
.end method


# virtual methods
.method public getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    const-string v5, "openSDK_LOG.UIListenerManager"

    const-string v6, "getListnerWithAction action is null!"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v3, v6

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v3

    monitor-exit v5

    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    :cond_1
    move-object v5, v2

    iget-object v5, v5, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    move-object v0, v5

    goto :goto_0
.end method

.method public getListnerWithRequestCode(I)Lcom/tencent/tauth/IUiListener;
    .locals 7

    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Lcom/tencent/open/utils/h;->a(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    const-string v3, "openSDK_LOG.UIListenerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListner action is null! rquestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v7, "openSDK_LOG.UIListenerManager"

    const-string v8, "handleDataToListener"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    invoke-interface {v7}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :goto_0
    return-void

    :cond_0
    move-object v7, v1

    const-string v8, "key_action"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string v7, "action_login"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    const-string v8, "key_error_code"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    move v7, v4

    if-nez v7, :cond_3

    move-object v7, v1

    const-string v8, "key_response"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_2

    move-object v7, v5

    :try_start_0
    invoke-static {v7}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    move-object v6, v7

    move-object v7, v2

    move-object v8, v6

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    new-instance v8, Lcom/tencent/tauth/UiError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, -0x4

    const-string v11, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v7, "openSDK_LOG.UIListenerManager"

    const-string v8, "OpenUi, onActivityResult, json error"

    move-object v9, v6

    invoke-static {v7, v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string v7, "openSDK_LOG.UIListenerManager"

    const-string v8, "OpenUi, onActivityResult, onComplete"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    new-instance v8, Lorg/json/JSONObject;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v7, "openSDK_LOG.UIListenerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenUi, onActivityResult, onError = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    const-string v8, "key_error_msg"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v1

    const-string v8, "key_error_detail"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v2

    new-instance v8, Lcom/tencent/tauth/UiError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-direct {v9, v10, v11, v12}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1

    :cond_4
    const-string v7, "action_share"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    const-string v8, "result"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v1

    const-string v8, "response"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const-string v7, "cancel"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v2

    invoke-interface {v7}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto/16 :goto_1

    :cond_5
    const-string v7, "error"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v2

    new-instance v8, Lcom/tencent/tauth/UiError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, -0x6

    const-string v11, "unknown error"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_1

    :cond_6
    const-string v7, "complete"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v5

    if-nez v9, :cond_7

    const-string v9, "{\"ret\": 0}"

    :goto_2
    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v2

    move-object v8, v6

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :cond_7
    move-object v9, v5

    goto :goto_2

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    move-object v7, v2

    new-instance v8, Lcom/tencent/tauth/UiError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, -0x4

    const-string v11, "json error"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v10, "openSDK_LOG.UIListenerManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onActivityResult req="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " res="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    move v11, v1

    invoke-virtual {v10, v11}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithRequestCode(I)Lcom/tencent/tauth/IUiListener;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    if-nez v10, :cond_0

    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v0

    move v11, v1

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lcom/tencent/connect/common/UIListenerManager;->a(ILcom/tencent/tauth/IUiListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v10

    move-object v5, v10

    :cond_0
    move v10, v2

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    const/4 v10, 0x0

    move-object v11, v3

    if-ne v10, v11, :cond_2

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x6

    const-string v14, "onActivityResult intent data is null."

    const-string v15, "onActivityResult intent data is null."

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const/4 v10, 0x1

    move v0, v10

    :goto_0
    return v0

    :cond_1
    const-string v10, "openSDK_LOG.UIListenerManager"

    const-string v11, "onActivityResult can\'t find the listener"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    :cond_2
    move-object v10, v3

    const-string v11, "key_action"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    const-string v10, "action_login"

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v3

    const-string v11, "key_error_code"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move v7, v10

    move v10, v7

    if-nez v10, :cond_4

    move-object v10, v3

    const-string v11, "key_response"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    if-eqz v10, :cond_3

    move-object v10, v8

    :try_start_0
    invoke-static {v10}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object v9, v10

    move-object v10, v5

    move-object v11, v9

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v9, v10

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x4

    const-string v14, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    move-object v15, v8

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v10, "openSDK_LOG.UIListenerManager"

    const-string v11, "OpenUi, onActivityResult, json error"

    move-object v12, v9

    invoke-static {v10, v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const-string v10, "openSDK_LOG.UIListenerManager"

    const-string v11, "OpenUi, onActivityResult, onComplete"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v5

    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v10, "openSDK_LOG.UIListenerManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OpenUi, onActivityResult, onError = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v3

    const-string v11, "key_error_msg"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v3

    const-string v11, "key_error_detail"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move v13, v7

    move-object v14, v8

    move-object v15, v9

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1

    :cond_5
    const-string v10, "action_share"

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v10, v3

    const-string v11, "result"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    move-object v10, v3

    const-string v11, "response"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const-string v10, "cancel"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v5

    invoke-interface {v10}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    :cond_6
    :goto_2
    goto/16 :goto_1

    :cond_7
    const-string v10, "error"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x6

    const-string v14, "unknown error"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_2

    :cond_8
    const-string v10, "complete"

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :try_start_1
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v8

    if-nez v12, :cond_9

    const-string v12, "{\"ret\": 0}"

    :goto_3
    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    move-object v10, v5

    move-object v11, v9

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :cond_9
    move-object v12, v8

    goto :goto_3

    :catch_1
    move-exception v10

    move-object v9, v10

    move-object v10, v9

    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x4

    const-string v14, "json error"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_2

    :cond_a
    move-object v10, v3

    const-string v11, "key_error_code"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move v7, v10

    move v10, v7

    if-nez v10, :cond_c

    move-object v10, v3

    const-string v11, "key_response"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    if-eqz v10, :cond_b

    move-object v10, v8

    :try_start_2
    invoke-static {v10}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object v9, v10

    move-object v10, v5

    move-object v11, v9

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    goto/16 :goto_1

    :catch_2
    move-exception v10

    move-object v9, v10

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, -0x4

    const-string v14, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    move-object v15, v8

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_4

    :cond_b
    move-object v10, v5

    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    move-object v10, v3

    const-string v11, "key_error_msg"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v3

    const-string v11, "key_error_detail"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v5

    new-instance v11, Lcom/tencent/tauth/UiError;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move v13, v7

    move-object v14, v8

    move-object v15, v9

    invoke-direct {v12, v13, v14, v15}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_1

    :cond_d
    move-object v10, v5

    invoke-interface {v10}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    goto/16 :goto_1
.end method

.method public setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v7, v1

    invoke-static {v7}, Lcom/tencent/open/utils/h;->a(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    if-nez v7, :cond_0

    const-string v7, "openSDK_LOG.UIListenerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setListener action is null! rquestCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/4 v7, 0x0

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v8, v3

    new-instance v9, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move v12, v1

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/tencent/connect/common/UIListenerManager$ApiTask;-><init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    move-object v4, v7

    move-object v7, v5

    monitor-exit v7

    move-object v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7

    :cond_1
    move-object v7, v4

    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    move-object v0, v7

    goto :goto_0
.end method

.method public setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v1

    invoke-static {v7}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;)I

    move-result v7

    move v3, v7

    move v7, v3

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const-string v7, "openSDK_LOG.UIListenerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setListnerWithAction fail, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    const/4 v7, 0x0

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v5, v8

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager;->b:Ljava/util/Map;

    move-object v8, v1

    new-instance v9, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    move v12, v3

    move-object v13, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/tencent/connect/common/UIListenerManager$ApiTask;-><init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/connect/common/UIListenerManager$ApiTask;

    move-object v4, v7

    move-object v7, v5

    monitor-exit v7

    move-object v7, v4

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7

    :cond_1
    move-object v7, v4

    iget-object v7, v7, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    move-object v0, v7

    goto :goto_0
.end method
