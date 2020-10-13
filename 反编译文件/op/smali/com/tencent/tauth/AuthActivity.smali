.class public Lcom/tencent/tauth/AuthActivity;
.super Landroid/app/Activity;
.source "ProGuard"


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field public static final ACTION_SHARE_PRIZE:Ljava/lang/String; = "sharePrize"

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/tauth/AuthActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v11, "openSDK_LOG.AuthActivity"

    const-string v12, "-->handleActionUri--start"

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v12, v1

    if-eq v11, v12, :cond_0

    const/4 v11, 0x0

    move-object v12, v1

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    if-eq v11, v12, :cond_0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const-string v11, "openSDK_LOG.AuthActivity"

    const-string v12, "-->handleActionUri, uri invalid"

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    move-object v11, v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v2, v11

    move-object v11, v2

    move-object v12, v2

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    invoke-static {v11}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move-object v4, v11

    const/4 v11, 0x0

    move-object v12, v4

    if-ne v11, v12, :cond_2

    const-string v11, "openSDK_LOG.AuthActivity"

    const-string v12, "-->handleActionUri, bundle is null"

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_0

    :cond_2
    move-object v11, v4

    const-string v12, "action"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    const-string v11, "openSDK_LOG.AuthActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-->handleActionUri, action: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move-object v12, v5

    if-ne v11, v12, :cond_3

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    :goto_1
    goto :goto_0

    :cond_3
    move-object v11, v5

    const-string v12, "shareToQQ"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v11, v5

    const-string v12, "shareToQzone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v11, v5

    const-string v12, "sendToMyComputer"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v11, v5

    const-string v12, "shareToTroopBar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    move-object v11, v5

    const-string v12, "shareToQzone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v0

    const-string v12, "com.tencent.mobileqq"

    invoke-static {v11, v12}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object v11, v0

    const-string v12, "5.2.0"

    invoke-static {v11, v12}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_5

    sget v11, Lcom/tencent/tauth/AuthActivity;->a:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/tencent/tauth/AuthActivity;->a:I

    sget v11, Lcom/tencent/tauth/AuthActivity;->a:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    sput v11, Lcom/tencent/tauth/AuthActivity;->a:I

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    const-string v11, "openSDK_LOG.AuthActivity"

    const-string v12, "-->handleActionUri, most share action, start assistactivity"

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    const-class v14, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v11

    move-object v11, v6

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    move-object v11, v6

    const/high16 v12, 0x24000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v11

    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto :goto_1

    :cond_6
    move-object v11, v5

    const-string v12, "addToQQFavorites"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    move-object v11, v6

    const-string v12, "key_action"

    const-string v13, "action_share"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Lcom/tencent/connect/common/UIListenerManager;->getListnerWithAction(Ljava/lang/String;)Lcom/tencent/tauth/IUiListener;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v11

    move-object v12, v6

    move-object v13, v7

    check-cast v13, Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v11, v12, v13}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    :cond_7
    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_1

    :cond_8
    move-object v11, v5

    const-string v12, "sharePrize"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/tencent/tauth/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    move-object v6, v11

    move-object v11, v4

    const-string v12, "response"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    const/4 v11, 0x0

    move-object v8, v11

    const-string v11, ""

    move-object v9, v11

    move-object v11, v7

    :try_start_0
    invoke-static {v11}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object v8, v11

    move-object v11, v8

    const-string v12, "activityid"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v9, v11

    :goto_2
    move-object v11, v9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    move-object v11, v6

    const-string v12, "sharePrize"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    new-instance v11, Landroid/os/Bundle;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    move-object v10, v11

    move-object v11, v10

    const-string v12, "activityid"

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v6

    move-object v12, v10

    invoke-virtual {v11, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    :cond_9
    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Lcom/tencent/tauth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_1

    :catch_0
    move-exception v11

    move-object v10, v11

    const-string v11, "openSDK_LOG.AuthActivity"

    const-string v12, "sharePrize parseJson has exception."

    move-object v13, v10

    invoke-static {v11, v12, v13}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/tauth/AuthActivity;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const-string v4, "openSDK_LOG.AuthActivity"

    const-string v5, "-->onCreate, getIntent() return null"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Lcom/tencent/tauth/AuthActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lcom/tencent/tauth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    :goto_1
    const-string v4, "openSDK_LOG.AuthActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->onCreate, uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/tencent/tauth/AuthActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    const-string v4, "openSDK_LOG.AuthActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->onCreate, getIntent().getData() has exception! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
