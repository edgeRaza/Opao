.class public Lcom/tencent/open/SocialApiIml;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/SocialApiIml$a;
    }
.end annotation


# instance fields
.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;)Landroid/app/Activity;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    const-string v6, "openSDK_LOG.SocialApiIml"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->handleIntentWithAgent action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    const-string v7, "key_action"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v6, v2

    const-string v7, "key_params"

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v6

    const/16 v7, 0x2b61

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    const/16 v9, 0x2b61

    invoke-virtual {v6, v7, v8, v9}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    const-string v10, "openSDK_LOG.SocialApiIml"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->handleIntent action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", activityIntent = null ? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    if-nez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_1
    return-void

    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v10

    move-object v8, v10

    move v10, v7

    if-nez v10, :cond_2

    move-object v10, v8

    const-string v11, "C_LoginH5"

    invoke-virtual {v10, v11}, Lcom/tencent/open/utils/f;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v10, 0x1

    :goto_2
    move v9, v10

    move v10, v9

    if-eqz v10, :cond_4

    move-object v10, v0

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    invoke-direct/range {v10 .. v15}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    move-object v10, v0

    move-object v11, v1

    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v10, v11, v12, v13}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v7, v0

    const-string v8, "com.tencent.open.agent.SocialFriendChooser"

    invoke-virtual {v7, v8}, Lcom/tencent/open/SocialApiIml;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_0

    const-string v7, "openSDK_LOG.SocialApiIml"

    const-string v8, "--askgift--friend chooser not found"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const-string v8, "com.tencent.open.agent.RequestFreegiftActivity"

    invoke-virtual {v7, v8}, Lcom/tencent/open/SocialApiIml;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object v5, v7

    :cond_0
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Lcom/tencent/open/SocialApiIml;->b()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v7, "action_ask"

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v3

    const-string v8, "type"

    const-string v9, "request"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v7

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v8

    const-string v9, "http://qzs.qq.com/open/mobile/request/sdk_request.html?"

    invoke-virtual {v7, v8, v9}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move-object v13, v4

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void

    :cond_2
    const-string v7, "action_gift"

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    const-string v8, "type"

    const-string v9, "freegift"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v15, "openSDK_LOG.SocialApiIml"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-->handleIntentWithH5 action = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    const-string v16, "com.tencent.open.agent.AgentActivity"

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/SocialApiIml;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v7, v15

    new-instance v15, Lcom/tencent/open/SocialApiIml$a;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v4

    invoke-direct/range {v16 .. v22}, Lcom/tencent/open/SocialApiIml$a;-><init>(Lcom/tencent/open/SocialApiIml;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v8, v15

    move-object v15, v1

    const-string v16, "com.tencent.open.agent.EncryTokenActivity"

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/SocialApiIml;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v9, v15

    move-object v15, v9

    if-eqz v15, :cond_1

    move-object v15, v7

    if-eqz v15, :cond_1

    move-object v15, v7

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object v15, v9

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object v15, v7

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v9

    const-string v16, "oauth_consumer_key"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v9

    const-string v16, "openid"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v9

    const-string v16, "access_token"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v9

    const-string v16, "key_action"

    const-string v17, "action_check_token"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v1

    move-object/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/SocialApiIml;->a(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "openSDK_LOG.SocialApiIml"

    const-string v16, "-->handleIntentWithH5--found token activity"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v15

    const/16 v16, 0x2b62

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v9

    const/16 v18, 0x2b62

    invoke-virtual/range {v15 .. v18}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "openSDK_LOG.SocialApiIml"

    const-string v16, "-->handleIntentWithH5--token activity not found"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "tencent&sdk&qazxc***14969%%"

    move-object v10, v15

    const-string v15, "qzone3.4"

    move-object v11, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v12, v15

    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    move-object v13, v15

    move-object v15, v13

    :try_start_0
    const-string v16, "encry_token"

    move-object/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    :goto_1
    move-object v15, v8

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/SocialApiIml$a;->onComplete(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v15

    move-object v14, v15

    move-object v15, v14

    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v9, "openSDK_LOG.SocialApiIml"

    const-string v10, "OpenUi, showDialog --start"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v1

    invoke-static {v9}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v9

    move-object v9, v3

    const-string v10, "oauth_consumer_key"

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    const-string v10, "access_token"

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    if-eqz v9, :cond_1

    move-object v9, v3

    const-string v10, "openid"

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    const-string v10, "pfStore"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    const-string v10, "pf"

    const-string v11, "openmobile_android"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v3

    const-string v10, "pf"

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v9

    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    move-object v10, v3

    invoke-static {v10}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    const-string v9, "openSDK_LOG.SocialApiIml"

    const-string v10, "OpenUi, showDialog TDialog"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "action_challenge"

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "action_brag"

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, "openSDK_LOG.SocialApiIml"

    const-string v10, "OpenUi, showDialog PKDialog"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/tencent/open/c;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v12, v2

    move-object v13, v8

    move-object v14, v5

    move-object v15, v0

    iget-object v15, v15, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct/range {v10 .. v15}, Lcom/tencent/open/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v9}, Lcom/tencent/open/c;->show()V

    :goto_1
    return-void

    :catch_0
    move-exception v9

    move-object v7, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v3

    const-string v10, "pf"

    const-string v11, "openmobile_android"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v9, Lcom/tencent/open/TDialog;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v12, v2

    move-object v13, v8

    move-object v14, v5

    move-object v15, v0

    iget-object v15, v15, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct/range {v10 .. v15}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v9}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/open/SocialApiIml;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/tencent/open/SocialApiIml;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    const-string v6, "action_ask"

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v2, v6

    move-object v6, v2

    const-string v7, "com.qzone"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v3, v6

    move-object v6, v3

    const-string v7, "com.tencent.mobileqq"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v6, Landroid/content/Intent;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v4, v6

    move-object v6, v4

    const-string v7, "com.tencent.minihd.qq"

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "4.7"

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.qzone"

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    const-string v7, "4.2"

    invoke-static {v6, v7}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ec96e9ac1149251acbb1b0c5777cae95"

    invoke-static {v6, v7, v8}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v2

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    const-string v6, "action_gift"

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v6, v0

    const-string v7, "com.tencent.open.agent.SocialFriendChooser"

    invoke-virtual {v6, v7}, Lcom/tencent/open/SocialApiIml;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-nez v6, :cond_0

    const-string v6, "openSDK_LOG.SocialApiIml"

    const-string v7, "--invite--friend chooser not found"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    const-string v7, "com.tencent.open.agent.AppInvitationActivity"

    invoke-virtual {v6, v7}, Lcom/tencent/open/SocialApiIml;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    :cond_0
    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/tencent/open/SocialApiIml;->b()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v6

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    const-string v8, "http://qzs.qq.com/open/mobile/invite/sdk_invite.html?"

    invoke-virtual {v6, v7, v8}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const-string v9, "action_invite"

    move-object v10, v2

    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/open/SocialApiIml;->c:Landroid/app/Activity;

    move-object v6, v0

    const-string v7, "com.tencent.open.agent.SendStoryActivity"

    invoke-virtual {v6, v7}, Lcom/tencent/open/SocialApiIml;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lcom/tencent/open/SocialApiIml;->b()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v6

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    const-string v8, "http://qzs.qq.com/open/mobile/sendstory/sdk_sendstory_v1.3.html?"

    invoke-virtual {v6, v7, v8}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v1

    move-object v8, v4

    const-string v9, "action_story"

    move-object v10, v2

    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/tencent/open/SocialApiIml;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)V

    return-void
.end method

.method public writeEncryToken(Landroid/content/Context;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v12, "tencent&sdk&qazxc***14969%%"

    move-object v2, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    const-string v12, "qzone3.4"

    move-object v6, v12

    const/4 v12, 0x0

    move-object v7, v12

    move-object v12, v3

    if-eqz v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    move-object v12, v4

    if-eqz v12, :cond_0

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    move-object v12, v5

    if-eqz v12, :cond_0

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    :cond_0
    new-instance v12, Lcom/tencent/open/c/b;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/tencent/open/c/b;-><init>(Landroid/content/Context;)V

    move-object v8, v12

    move-object v12, v8

    invoke-virtual {v12}, Lcom/tencent/open/c/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    move-object v9, v12

    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = \'qq.com\';localStorage[\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialApiIml;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"]=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\";</script></head><body></body></html>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v12

    move-object v13, v1

    const-string v14, "http://qzs.qq.com"

    invoke-virtual {v12, v13, v14}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    move-object v12, v8

    move-object v13, v11

    move-object v14, v10

    const-string v15, "text/html"

    const-string v16, "utf-8"

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/tencent/open/c/b;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
