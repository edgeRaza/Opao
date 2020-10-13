.class public Lcom/tencent/tauth/Tencent;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final REQUEST_LOGIN:I = 0x2711

.field private static b:Lcom/tencent/tauth/Tencent;


# instance fields
.field private final a:Lcom/tencent/connect/auth/c;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.tencent.tauth.AuthActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :catch_0
    move-exception v4

    move-object v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.tauth.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</intent-filter>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</activity>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.tauth.AuthActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v2, v4

    const-string v4, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity,\u8bf7\u52a0\u4e0acom.tencent.connect.common.AssistActivity,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    move-object v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AndroidManifest.xml \u6ca1\u6709\u68c0\u6d4b\u5230com.tencent.connect.common.AssistActivity\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    const-class v6, Lcom/tencent/tauth/Tencent;

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/open/utils/e;->a(Landroid/content/Context;)V

    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createInstance()  -- start, appId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;

    if-nez v2, :cond_1

    new-instance v2, Lcom/tencent/tauth/Tencent;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;

    :cond_0
    :goto_0
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/tencent/tauth/Tencent;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    monitor-exit v6

    return-object v0

    :cond_1
    move-object v2, v0

    :try_start_1
    sget-object v3, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v3}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    new-instance v2, Lcom/tencent/tauth/Tencent;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/tencent/tauth/Tencent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_2
    move-object v2, v1

    move-object v3, v0

    :try_start_2
    invoke-static {v2, v3}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v2

    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "createInstance()  -- end"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tauth/Tencent;->b:Lcom/tencent/tauth/Tencent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_1
.end method

.method public static handleResultData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.Tencent"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResultData() data = null ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener = null ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static onActivityResultData(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z
    .locals 10

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResultData() reqcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", resultcode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data = null ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", listener = null ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v4

    move v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/tencent/connect/common/UIListenerManager;->onActivityResult(IILandroid/content/Intent;Lcom/tencent/tauth/IUiListener;)Z

    move-result v4

    move v0, v4

    return v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "ask()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/SocialApi;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/open/SocialApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/open/SocialApi;->ask(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public bindQQGroup(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/tencent/open/SocialOperation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/open/SocialOperation;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/tencent/open/SocialOperation;->bindQQGroup(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public checkLogin(Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "checkLogin()"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/c;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public checkSessionValid(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/tencent/connect/auth/QQToken;->loadSession(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    move-object v2, v11

    move-object v11, v2

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    :try_start_0
    const-string v12, "access_token"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v2

    const-string v12, "expires_in"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move-object v11, v2

    const-string v12, "openid"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    const-string v12, "expires_time"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v6

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v7, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v11

    move-wide v9, v11

    move-wide v11, v9

    move-wide v13, v7

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    const/4 v11, 0x1

    move v0, v11

    :goto_0
    return v0

    :cond_0
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v3, v11

    const-string v11, "QQToken"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkSessionValid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    move v0, v11

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getExpireTimeInSecond()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getQQToken()Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "gift()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/SocialApi;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/open/SocialApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/open/SocialApi;->gift(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public handleLoginData(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "openSDK_LOG.Tencent"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLoginData() data = null ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", listener = null ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/common/UIListenerManager;->handleDataToListener(Landroid/content/Intent;Lcom/tencent/tauth/IUiListener;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public initSessionCache(Lorg/json/JSONObject;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    :try_start_0
    const-string v6, "access_token"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v1

    const-string v6, "expires_in"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v1

    const-string v6, "openid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v2, v5

    const-string v5, "QQToken"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSessionCache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "invite()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/SocialApi;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/open/SocialApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/open/SocialApi;->invite(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method

.method public isQQInstalled(Landroid/content/Context;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v5, v6

    move-object v6, v5

    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public isReady()Z
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    move v2, v1

    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSessionValid()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->c()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isSupportSSOLogin(Landroid/app/Activity;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "com.tencent.minihd.qq"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    const-string v3, "4.1"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    move-object v2, v1

    const-string v3, "1.1"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public joinQQGroup(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v8, "openSDK_LOG.Tencent"

    const-string v9, "joinQQGroup()"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&openid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-static {v10}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    :cond_0
    move-object v8, v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "&appid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    :cond_1
    move-object v8, v3

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    move-object v8, v1

    move-object v9, v3

    :try_start_0
    invoke-virtual {v8, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ANDROIDQQ.JOININGROUP.XX"

    const-string v12, "13"

    const-string v13, "18"

    const-string v14, "0"

    invoke-virtual/range {v8 .. v14}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    move v0, v8

    :goto_0
    return v0

    :catch_0
    move-exception v8

    move-object v7, v8

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ANDROIDQQ.JOININGROUP.XX"

    const-string v12, "13"

    const-string v13, "18"

    const-string v14, "1"

    invoke-virtual/range {v8 .. v14}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method public loadSession(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/QQToken;->loadSession(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login() with activity, scope is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const-string v5, "openSDK_LOG.Tencent"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "login() with activity, scope is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public login(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "login() with fragment, scope is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const-string v8, ""

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public login(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    const-string v5, "openSDK_LOG.Tencent"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "login() with fragment, scope is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    const-string v9, ""

    move v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public loginServerSide(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loginServerSide() with activity, scope = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",server_side"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",server_side"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public loginServerSide(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loginServerSide() with fragment, scope = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",server_side"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v5, v1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",server_side"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    const-string v8, ""

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/tencent/connect/auth/c;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public loginWithOEM(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "openSDK_LOG.Tencent"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loginWithOEM() with activity, scope = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    return v0
.end method

.method public logout(Landroid/content/Context;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "logout()"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    return-void
.end method

.method public makeFriend(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lcom/tencent/open/SocialOperation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-virtual {v6}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tencent/open/SocialOperation;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/tencent/open/SocialOperation;->makeFriend(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    const-string v5, "onActivityResult() deprecated, will do nothing"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "publishToQzone()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/connect/share/QzonePublish;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tencent/connect/share/QzonePublish;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/connect/share/QzonePublish;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reAuth() with activity, scope = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/connect/auth/c;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public reportDAU()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/c;->a()V

    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.Tencent"

    const-string v5, "request()"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v4}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v4

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lcom/tencent/open/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public requestAsync(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "openSDK_LOG.Tencent"

    const-string v7, "requestAsync()"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v6}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v6

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public saveSession(Lorg/json/JSONObject;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v2}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/QQToken;->saveSession(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "openSDK_LOG.Tencent"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAccessToken(), expiresIn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/auth/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "setOpenId() --start"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/connect/auth/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "openSDK_LOG.Tencent"

    const-string v3, "setOpenId() --end"

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "shareToQQ()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/connect/share/QQShare;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "shareToQzone()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/connect/share/QzoneShare;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v8}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/tencent/connect/share/QzoneShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/connect/share/QzoneShare;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v5, "openSDK_LOG.Tencent"

    const-string v6, "story()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/open/SocialApi;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/tauth/Tencent;->a:Lcom/tencent/connect/auth/c;

    invoke-virtual {v7}, Lcom/tencent/connect/auth/c;->b()Lcom/tencent/connect/auth/QQToken;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/tencent/open/SocialApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/open/SocialApi;->story(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const/4 v5, 0x0

    move v0, v5

    return v0
.end method
