.class public Lcom/tencent/connect/auth/AuthAgent;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/AuthAgent$b;,
        Lcom/tencent/connect/auth/AuthAgent$a;,
        Lcom/tencent/connect/auth/AuthAgent$c;
    }
.end annotation


# static fields
.field public static final SECURE_LIB_ARM64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_64"

.field public static final SECURE_LIB_ARM_FILE_NAME:Ljava/lang/String; = "libwbsafeedit"

.field public static SECURE_LIB_FILE_NAME:Ljava/lang/String; = null

.field public static SECURE_LIB_NAME:Ljava/lang/String; = null

.field public static final SECURE_LIB_X86_64_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86_64"

.field public static final SECURE_LIB_X86_FILE_NAME:Ljava/lang/String; = "libwbsafeedit_x86"


# instance fields
.field private c:Lcom/tencent/tauth/IUiListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v1, "libwbsafeedit"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object v0, v1

    move-object v1, v0

    if-eqz v1, :cond_3

    move-object v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v0

    const-string v2, "arm64-v8a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "libwbsafeedit_64"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "is arm64-v8a architecture"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "libwbsafeedit_x86"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "is x86 architecture"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    const-string v2, "x86_64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "libwbsafeedit_x86_64"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "is x86_64 architecture"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "libwbsafeedit"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "is arm(default) architecture"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "libwbsafeedit"

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/connect/auth/AuthAgent;->SECURE_LIB_NAME:Ljava/lang/String;

    const-string v1, "openSDK_LOG.AuthAgent"

    const-string v2, "is arm(default) architecture"

    invoke-static {v1, v2}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(ZLcom/tencent/tauth/IUiListener;Z)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "OpenUi, showDialog -- start"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v10

    move-object v4, v10

    move v10, v1

    if-eqz v10, :cond_0

    move-object v10, v4

    const-string v11, "isadd"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v10, v4

    const-string v11, "scope"

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "client_id"

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v10, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    if-eqz v10, :cond_2

    move-object v10, v4

    const-string v11, "pf"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "desktop_m_qq-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "android"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v10

    move-object v11, v5

    invoke-static {v10, v11}, Lcom/tencent/open/utils/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    move-object v10, v4

    const-string v11, "sign"

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "time"

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "display"

    const-string v12, "mobile"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "response_type"

    const-string v12, "token"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "redirect_uri"

    const-string v12, "auth://tauth.qq.com/"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "cancel_display"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "switch"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v4

    const-string v11, "status_userip"

    invoke-static {}, Lcom/tencent/open/utils/k;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v3

    if-eqz v10, :cond_1

    move-object v10, v4

    const-string v11, "style"

    const-string v12, "qr"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v10

    move-object v10, v7

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v11

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    const-string v13, "https://openmobile.qq.com/oauth2.0/m_authorize?"

    invoke-virtual {v11, v12, v13}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v7

    move-object v11, v4

    invoke-static {v11}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    new-instance v10, Lcom/tencent/connect/auth/AuthAgent$c;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v13

    move-object v14, v2

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/tencent/connect/auth/AuthAgent$c;-><init>(Lcom/tencent/connect/auth/AuthAgent;Landroid/content/Context;Lcom/tencent/tauth/IUiListener;ZZ)V

    move-object v9, v10

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "OpenUi, showDialog TDialog"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/tencent/connect/auth/AuthAgent$1;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    move-object v13, v8

    move-object v14, v9

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/connect/auth/AuthAgent$1;-><init>(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V

    invoke-static {v10}, Lcom/tencent/open/utils/i;->a(Ljava/lang/Runnable;)V

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "OpenUi, showDialog -- end"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    move v0, v10

    return v0

    :cond_2
    move-object v10, v4

    const-string v11, "pf"

    const-string v12, "openmobile_android"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/auth/AuthAgent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/connect/auth/AuthAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v7, "openSDK_LOG.AuthAgent"

    const-string v8, "startActionActivity() -- start"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    const-string v8, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v7, v8}, Lcom/tencent/connect/auth/AuthAgent;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    if-eqz v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v7

    move-object v5, v7

    move v7, v3

    if-eqz v7, :cond_0

    move-object v7, v5

    const-string v8, "isadd"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v7, v5

    const-string v8, "scope"

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v5

    const-string v8, "client_id"

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Lcom/tencent/connect/auth/AuthAgent;->isOEM:Z

    if-eqz v7, :cond_1

    move-object v7, v5

    const-string v8, "pf"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "desktop_m_qq-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tencent/connect/auth/AuthAgent;->installChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tencent/connect/auth/AuthAgent;->registerChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tencent/connect/auth/AuthAgent;->businessId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v7, v5

    const-string v8, "need_pay"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v5

    const-string v8, "oauth_app_name"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    const-string v8, "key_action"

    const-string v9, "action_login"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object v7, v4

    const-string v8, "key_params"

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    move-object v7, v4

    const-string v8, "appid"

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/tencent/connect/auth/AuthAgent$b;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-direct {v8, v9, v10}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    move-object v6, v7

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v7

    const/16 v8, 0x2b5d

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v7, v8, v9}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v2

    if-eqz v7, :cond_2

    const-string v7, "openSDK_LOG.AuthAgent"

    const-string v8, "startAssitActivity fragment"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    const/16 v10, 0x2b5d

    invoke-virtual {v7, v8, v9, v10}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    :goto_1
    const-string v7, "openSDK_LOG.AuthAgent"

    const-string v8, "startActionActivity() -- end, found activity for loginIntent"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "LOGIN_CHECK_SDK"

    const-string v10, "1000"

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, ""

    invoke-virtual/range {v7 .. v16}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const/4 v7, 0x1

    move v0, v7

    :goto_2
    return v0

    :cond_1
    move-object v7, v5

    const-string v8, "pf"

    const-string v9, "openmobile_android"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v7, "openSDK_LOG.AuthAgent"

    const-string v8, "startAssitActivity activity"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    const/16 v10, 0x2b5d

    invoke-virtual {v7, v8, v9, v10}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v7

    const/4 v8, 0x1

    const-string v9, "LOGIN_CHECK_SDK"

    const-string v10, "1000"

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v11}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-string v16, "startActionActivity fail"

    invoke-virtual/range {v7 .. v16}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    const-string v7, "openSDK_LOG.AuthAgent"

    const-string v8, "startActionActivity() -- end, no target activity for loginIntent"

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/connect/auth/AuthAgent;)Ljava/lang/ref/WeakReference;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/connect/auth/AuthAgent;)Landroid/os/Bundle;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/tencent/connect/auth/AuthAgent;->b()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/tencent/tauth/IUiListener;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "reportDAU() -- start"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "tencent&sdk&qazxc***14969%%"

    move-object v2, v10

    const-string v10, "qzone3.4"

    move-object v3, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    const-string v10, ""

    move-object v7, v10

    move-object v10, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v6

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    :cond_0
    move-object v10, v7

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "reportDAU -- encrytoken is null"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v10, "https://openmobile.qq.com/user/user_login_statis"

    move-object v8, v10

    move-object v10, v0

    invoke-virtual {v10}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    const-string v11, "encrytoken"

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v11

    move-object v12, v8

    move-object v13, v9

    const-string v14, "POST"

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    const-string v10, "openSDK_LOG.AuthAgent"

    const-string v11, "reportDAU() -- end"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/tencent/tauth/IUiListener;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    const-string v5, "https://openmobile.qq.com/v3/user/get_info"

    move-object v2, v5

    move-object v5, v0

    invoke-virtual {v5}, Lcom/tencent/connect/auth/AuthAgent;->a()Landroid/os/Bundle;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    const-string v6, "reqType"

    const-string v7, "checkLogin"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    new-instance v8, Lcom/tencent/connect/auth/AuthAgent$a;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/tencent/connect/auth/AuthAgent$a;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    invoke-direct {v6, v7, v8}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    const-string v9, "GET"

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;)I
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/tencent/connect/auth/AuthAgent;->doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I

    move-result v6

    move v0, v6

    return v0
.end method

.method public doLogin(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ZLandroid/support/v4/app/Fragment;Z)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lcom/tencent/connect/auth/AuthAgent;->d:Ljava/lang/String;

    move-object v8, v0

    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v8, Lcom/tencent/connect/auth/AuthAgent;->e:Ljava/lang/ref/WeakReference;

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v8

    const-string v9, "C_LoginWeb"

    invoke-virtual {v8, v9}, Lcom/tencent/open/utils/f;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    move v11, v4

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/auth/AuthAgent;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "openSDK_LOG.AuthAgent"

    const-string v9, "OpenUi, showUi, return Constants.UI_ACTIVITY"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "1"

    const-string v13, "5"

    const-string v14, "0"

    const-string v15, "0"

    const-string v16, "0"

    invoke-virtual/range {v8 .. v16}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    move v0, v8

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v9}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v10}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "1"

    const-string v13, "5"

    const-string v14, "1"

    const-string v15, "0"

    const-string v16, "0"

    invoke-virtual/range {v8 .. v16}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "openSDK_LOG.AuthAgent"

    const-string v9, "doLogin startActivity fail show dialog."

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/tencent/connect/auth/AuthAgent$b;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    invoke-direct {v9, v10, v11}, Lcom/tencent/connect/auth/AuthAgent$b;-><init>(Lcom/tencent/connect/auth/AuthAgent;Lcom/tencent/tauth/IUiListener;)V

    move-object v7, v8

    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    move-object v8, v0

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/auth/AuthAgent;->a(ZLcom/tencent/tauth/IUiListener;Z)I

    move-result v8

    move v0, v8

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/connect/auth/AuthAgent;->c:Lcom/tencent/tauth/IUiListener;

    return-void
.end method
