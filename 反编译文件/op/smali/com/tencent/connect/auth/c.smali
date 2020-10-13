.class public Lcom/tencent/connect/auth/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/connect/auth/AuthAgent;

.field private b:Lcom/tencent/connect/auth/QQToken;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v3, "openSDK_LOG.QQAuth"

    const-string v4, "new QQAuth() --start"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    new-instance v4, Lcom/tencent/connect/auth/QQToken;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/tencent/connect/auth/QQToken;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v3, v0

    new-instance v4, Lcom/tencent/connect/auth/AuthAgent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct {v5, v6}, Lcom/tencent/connect/auth/AuthAgent;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    iput-object v4, v3, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {v3, v4}, Lcom/tencent/connect/a/a;->c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string v3, "openSDK_LOG.QQAuth"

    const-string v4, "new QQAuth() --end"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result v6

    move v0, v6

    return v0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v13, v1

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v13, v1

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object v8, v13

    const/4 v13, 0x0

    move-object v9, v13

    move-object v13, v8

    const/16 v14, 0x80

    :try_start_0
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v13

    move-object v10, v13

    move-object v13, v10

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v11, v13

    :goto_0
    move-object v13, v11

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    move-object v12, v13

    move-object v13, v7

    move-object v14, v12

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v12

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v9, v13

    :cond_0
    move-object v13, v9

    if-eqz v13, :cond_2

    new-instance v13, Ljava/io/File;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v9

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/tencent/open/utils/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v11

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "openSDK_LOG.QQAuth"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->login channelId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v0

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    const-string v19, ""

    invoke-virtual/range {v13 .. v19}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    move v0, v13

    :goto_1
    return v0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_2
    const-string v13, "openSDK_LOG.QQAuth"

    const-string v14, "-->login channelId is null "

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v14, v1

    move-object v15, v3

    move-object/from16 v16, v4

    const/16 v17, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v6

    invoke-virtual/range {v13 .. v19}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result v13

    move v0, v13

    goto :goto_1

    :catch_0
    move-exception v13

    move-object v9, v13

    const-string v13, "openSDK_LOG.QQAuth"

    const-string v14, "-->login get channel id exception."

    move-object v15, v9

    invoke-static {v13, v14, v15}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/c;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/utils/e;->a(Landroid/content/Context;)V

    const-string v4, "openSDK_LOG.QQAuth"

    const-string v5, "QQAuth -- createInstance() --start"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.tencent.tauth.AuthActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    new-instance v4, Landroid/content/ComponentName;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.tencent.connect.common.AssistActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    new-instance v4, Lcom/tencent/connect/auth/c;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/auth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object v2, v4

    const-string v4, "openSDK_LOG.QQAuth"

    const-string v5, "QQAuth -- createInstance()  --end"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    move-object v0, v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v4

    move-object v2, v4

    const-string v4, "openSDK_LOG.QQAuth"

    const-string v5, "createInstance() error --end"

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "\u8bf7\u53c2\u7167\u6587\u6863\u5728Androidmanifest.xml\u52a0\u4e0aAuthActivity\u548cAssitActivity\u7684\u5b9a\u4e49 "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.QQAuth"

    const-string v5, "login()"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const-string v8, ""

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    const-string v5, "openSDK_LOG.QQAuth"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->login activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const-string v7, "openSDK_LOG.QQAuth"

    const-string v8, "loginWithOEM"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    sput-boolean v7, Lcom/tencent/connect/common/BaseApi;->isOEM:Z

    move-object v7, v4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "null"

    move-object v4, v7

    :cond_0
    move-object v7, v5

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "null"

    move-object v5, v7

    :cond_1
    move-object v7, v6

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "null"

    move-object v6, v7

    :cond_2
    move-object v7, v5

    sput-object v7, Lcom/tencent/connect/common/BaseApi;->installChannel:Ljava/lang/String;

    move-object v7, v4

    sput-object v7, Lcom/tencent/connect/common/BaseApi;->registerChannel:Ljava/lang/String;

    move-object v7, v6

    sput-object v7, Lcom/tencent/connect/common/BaseApi;->businessId:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    move-result v7

    move v0, v7

    return v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Z)I
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    const-string v5, "openSDK_LOG.QQAuth"

    const-string v6, "login()"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v2

    move-object v9, v3

    const-string v10, ""

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result v5

    move v0, v5

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v6, v1

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    move-object v5, v6

    const-string v6, "openSDK_LOG.QQAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->login activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object v6, v7

    const-string v7, "openSDK_LOG.QQAuth"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->login activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v6

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/tencent/connect/auth/c;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/String;Z)I

    move-result v7

    move v0, v7

    return v0
.end method

.method public a()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/connect/auth/AuthAgent;->a(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "openSDK_LOG.QQAuth"

    const-string v4, "setOpenId() --start"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/connect/auth/QQToken;->setOpenId(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {v3, v4}, Lcom/tencent/connect/a/a;->d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const-string v3, "openSDK_LOG.QQAuth"

    const-string v4, "setOpenId() --end"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/tauth/IUiListener;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/AuthAgent;->b(Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v3, "openSDK_LOG.QQAuth"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAccessToken(), validTimeInSecond = "

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

    iget-object v3, v3, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/connect/auth/QQToken;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "openSDK_LOG.QQAuth"

    const-string v5, "reAuth()"

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/c;->a:Lcom/tencent/connect/auth/AuthAgent;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public b()Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method public c()Z
    .locals 5

    move-object v0, p0

    const-string v1, "openSDK_LOG.QQAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionValid(), result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "true"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/c;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->isSessionValid()Z

    move-result v1

    move v0, v1

    return v0

    :cond_0
    const-string v3, "false"

    goto :goto_0
.end method
