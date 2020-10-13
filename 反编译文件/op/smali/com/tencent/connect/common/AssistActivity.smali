.class public Lcom/tencent/connect/common/AssistActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field public static final EXTRA_INTENT:Ljava/lang/String; = "openSDK_LOG.AssistActivity.ExtraIntent"


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Handler;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/connect/common/AssistActivity;->c:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tencent/connect/common/AssistActivity;->a:Z

    move-object v1, v0

    new-instance v2, Lcom/tencent/connect/common/AssistActivity$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/tencent/connect/common/AssistActivity$1;-><init>(Lcom/tencent/connect/common/AssistActivity;)V

    iput-object v2, v1, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    const-string v12, "viaShareType"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    move-object v11, v1

    const-string v12, "callbackAction"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v1

    const-string v12, "url"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move-object v11, v1

    const-string v12, "openId"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    const-string v12, "appId"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    const-string v11, ""

    move-object v7, v11

    const-string v11, ""

    move-object v8, v11

    const-string v11, "shareToQQ"

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "ANDROIDQQ.SHARETOQQ.XX"

    move-object v7, v11

    const-string v11, "10"

    move-object v8, v11

    :cond_0
    :goto_0
    move-object v11, v0

    move-object v12, v4

    invoke-static {v11, v12}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    move v9, v11

    move v11, v9

    if-nez v11, :cond_3

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object v11

    move-object v10, v11

    const/4 v11, 0x0

    move-object v12, v10

    if-eq v11, v12, :cond_1

    move-object v11, v10

    new-instance v12, Lcom/tencent/tauth/UiError;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const/4 v14, -0x6

    const-string v15, "\u6253\u5f00\u6d4f\u89c8\u5668\u5931\u8d25!"

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_1
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v11

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    const-string v16, "3"

    const-string v17, "1"

    move-object/from16 v18, v2

    const-string v19, "0"

    const-string v20, "2"

    const-string v21, "0"

    invoke-virtual/range {v11 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :goto_1
    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "shareH5"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v11, "shareToQzone"

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "ANDROIDQQ.SHARETOQZ.XX"

    move-object v7, v11

    const-string v11, "11"

    move-object v8, v11

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v11

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    const-string v16, "3"

    const-string v17, "0"

    move-object/from16 v18, v2

    const-string v19, "0"

    const-string v20, "2"

    const-string v21, "0"

    invoke-virtual/range {v11 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getAssistActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    move-object v0, p0

    new-instance v2, Landroid/content/Intent;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-class v5, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.AssistActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--onActivityResult--requestCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | resultCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "data = null ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    move v4, v1

    if-nez v4, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    const-string v5, "key_action"

    const-string v6, "action_login"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    :cond_2
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/tencent/connect/common/AssistActivity;->setResultData(ILandroid/content/Intent;)V

    move-object v4, v0

    invoke-virtual {v4}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/tencent/connect/common/AssistActivity;->requestWindowFeature(I)Z

    move-result v5

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/tencent/connect/common/AssistActivity;->setRequestedOrientation(I)V

    const-string v5, "openSDK_LOG.AssistActivity"

    const-string v6, "--onCreate--"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "openSDK_LOG.AssistActivity"

    const-string v6, "-->onCreate--getIntent() returns null"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "openSDK_LOG.AssistActivity.ExtraIntent"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    move v3, v5

    move-object v5, v0

    move-object v6, v2

    if-nez v6, :cond_3

    const-string v6, ""

    :goto_1
    iput-object v6, v5, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "h5_share_data"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v4, v5

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    const-string v7, "RESTART_FLAG"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/tencent/connect/common/AssistActivity;->c:Z

    move-object v5, v0

    move-object v6, v1

    const-string v7, "RESUME_FLAG"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/tencent/connect/common/AssistActivity;->a:Z

    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-nez v5, :cond_6

    move-object v5, v4

    if-nez v5, :cond_5

    move-object v5, v2

    if-eqz v5, :cond_4

    const-string v5, "openSDK_LOG.AssistActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--onCreate--activityIntent not null, will start activity, reqcode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/tencent/connect/common/AssistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_2
    move-object v5, v2

    const-string v6, "key_request_code"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    :cond_3
    move-object v6, v2

    const-string v7, "appid"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const-string v5, "openSDK_LOG.AssistActivity"

    const-string v6, "--onCreate--activityIntent is null"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    goto :goto_2

    :cond_5
    const-string v5, "openSDK_LOG.AssistActivity"

    const-string v6, "--onCreate--h5 bundle not null, will open browser"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/tencent/connect/common/AssistActivity;->a(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    const-string v5, "openSDK_LOG.AssistActivity"

    const-string v6, "is restart"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "-->onDestroy"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.AssistActivity"

    const-string v3, "--onNewIntent"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    move-object v2, v1

    const-string v3, "key_action"

    const-string v4, "action_share"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object v2, v0

    const/4 v3, -0x1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "openSDK_LOG.AssistActivity"

    const-string v3, "--onNewIntent--activity not finished, finish now"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "-->onPause"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 6

    move-object v0, p0

    const-string v3, "openSDK_LOG.AssistActivity"

    const-string v4, "-->onResume"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    invoke-super {v3}, Landroid/app/Activity;->onResume()V

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/connect/common/AssistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    const-string v4, "is_login"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v1

    const-string v4, "is_qq_mobile_share"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/tencent/connect/common/AssistActivity;->c:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/connect/common/AssistActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/tencent/connect/common/AssistActivity;->finish()V

    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/tencent/connect/common/AssistActivity;->a:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/common/AssistActivity;->b:Landroid/os/Handler;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/connect/common/AssistActivity;->a:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.AssistActivity"

    const-string v3, "--onSaveInstanceState--"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "RESTART_FLAG"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v2, v1

    const-string v3, "RESUME_FLAG"

    move-object v4, v0

    iget-boolean v4, v4, Lcom/tencent/connect/common/AssistActivity;->a:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "-->onStart"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    move-object v0, p0

    const-string v1, "openSDK_LOG.AssistActivity"

    const-string v2, "-->onStop"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setResultData(ILandroid/content/Intent;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v7, v2

    if-nez v7, :cond_1

    const-string v7, "openSDK_LOG.AssistActivity"

    const-string v8, "--setResultData--intent is null, setResult ACTIVITY_CANCEL"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/tencent/connect/common/AssistActivity;->setResult(I)V

    move v7, v1

    const/16 v8, 0x2b5d

    if-ne v7, v8, :cond_0

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v7

    const-string v8, ""

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v10, "2"

    const-string v11, "1"

    const-string v12, "7"

    const-string v13, "2"

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v7, v2

    :try_start_0
    const-string v8, "key_response"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string v7, "openSDK_LOG.AssistActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--setResultDataForLogin-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lorg/json/JSONObject;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    move-object v7, v4

    const-string v8, "openid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v4

    const-string v8, "access_token"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "openSDK_LOG.AssistActivity"

    const-string v8, "--setResultData--openid and token not empty, setResult ACTIVITY_OK"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const/4 v8, -0x1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v7

    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v10, "2"

    const-string v11, "1"

    const-string v12, "7"

    const-string v13, "0"

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_2
    const-string v7, "openSDK_LOG.AssistActivity"

    const-string v8, "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v7

    const-string v8, ""

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/common/AssistActivity;->d:Ljava/lang/String;

    const-string v10, "2"

    const-string v11, "1"

    const-string v12, "7"

    const-string v13, "1"

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v3, v7

    const-string v7, "openSDK_LOG.AssistActivity"

    const-string v8, "--setResultData--parse response failed"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v7, "openSDK_LOG.AssistActivity"

    const-string v8, "--setResultData--response is empty, setResult ACTIVITY_OK"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const/4 v8, -0x1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/tencent/connect/common/AssistActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
