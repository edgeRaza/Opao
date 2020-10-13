.class public abstract Lcom/tencent/connect/common/BaseApi;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/common/BaseApi$TempRequestListener;
    }
.end annotation


# static fields
.field public static businessId:Ljava/lang/String;

.field public static installChannel:Ljava/lang/String;

.field public static isOEM:Z

.field public static registerChannel:Ljava/lang/String;


# instance fields
.field protected a:Lcom/tencent/connect/auth/c;

.field protected b:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/common/BaseApi;->a:Lcom/tencent/connect/auth/c;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v3, v4

    move-object v4, v3

    const-string v5, "is_login"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    move-object v4, v3

    const-string v5, "openSDK_LOG.AssistActivity.ExtraIntent"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/os/Bundle;
    .locals 9

    move-object v0, p0

    new-instance v4, Landroid/os/Bundle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    move-object v4, v1

    const-string v5, "format"

    const-string v6, "json"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "status_os"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "status_machine"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "status_version"

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "sdkv"

    const-string v6, "3.3.0.lite"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "sdkp"

    const-string v6, "a"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    const-string v5, "access_token"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "oauth_consumer_key"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "openid"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string v5, "appid_for_getting_config"

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pfStore"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v2, v4

    sget-boolean v4, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    const-string v5, "pf"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "desktop_m_qq-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, v1

    move-object v0, v4

    return-object v0

    :cond_1
    move-object v4, v2

    const-string v5, "pf"

    const-string v6, "openmobile_android"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v1

    const-string v5, "pf"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/tencent/connect/common/BaseApi;->a()Landroid/os/Bundle;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v4

    move-object v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    const-string v5, "need_version"

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v4, v3

    const-string v5, "http://openmobile.qq.com/oauth2.0/m_jump_by_version?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    move-object v5, v2

    invoke-static {v5}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method protected a(Landroid/app/Activity;ILandroid/content/Intent;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/tencent/connect/common/AssistActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v5, v6

    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v5

    const-string v7, "is_qq_mobile_share"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    :cond_0
    move-object v6, v5

    const-string v7, "openSDK_LOG.AssistActivity.ExtraIntent"

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    move-object v6, v1

    move-object v7, v5

    move v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    const-string v5, "key_request_code"

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/common/BaseApi;->a(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v7, "openSDK_LOG.BaseApi"

    const-string v8, "--handleDownloadLastestQQ"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    move-object v7, v4

    const-string v8, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v4

    move-object v8, v2

    invoke-static {v8}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Lcom/tencent/open/TDialog;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    const-string v10, ""

    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct/range {v8 .. v13}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Lcom/tencent/open/TDialog;->show()V

    return-void
.end method

.method protected a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v2

    const-string v5, "key_request_code"

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/common/BaseApi;->a(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected a(Landroid/content/Intent;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v2, v3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    const-string v4, "com.tencent.minihd.qq"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v2

    const-string v4, "com.tencent.mobileqq"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    const-string v4, "com.tencent.tim"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method protected b()Landroid/os/Bundle;
    .locals 10

    move-object v0, p0

    new-instance v5, Landroid/os/Bundle;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v1, v5

    move-object v5, v1

    const-string v6, "appid"

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v5}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    const-string v6, "keystr"

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "keytype"

    const-string v7, "0x80"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/common/BaseApi;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v5}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v1

    const-string v6, "hopenid"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v5, v1

    const-string v6, "platform"

    const-string v7, "androidqz"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "pfStore"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v3, v5

    sget-boolean v5, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    const-string v6, "pf"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "desktop_m_qq-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v5, v1

    const-string v6, "sdkv"

    const-string v7, "3.3.0.lite"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "sdkp"

    const-string v7, "a"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    move-object v0, v5

    return-object v0

    :cond_2
    move-object v5, v3

    const-string v6, "pf"

    const-string v7, "openmobile_android"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v1

    const-string v6, "pf"

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    const-string v6, "pf"

    const-string v7, "openmobile_android"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v2, v4

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/tencent/connect/common/BaseApi;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v2, v4

    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v2

    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v2, v4

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method
