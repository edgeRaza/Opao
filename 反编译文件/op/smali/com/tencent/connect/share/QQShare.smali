.class public Lcom/tencent/connect/share/QQShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final QQ_SHARE_SUMMARY_MAX_LENGTH:I = 0x200

.field public static final QQ_SHARE_TITLE_MAX_LENGTH:I = 0x80

.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_ARK_INFO:Ljava/lang/String; = "share_to_qq_ark_info"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN:I = 0x1

.field public static final SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE:I = 0x2

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QQ_TYPE_APP:I = 0x6

.field public static final SHARE_TO_QQ_TYPE_AUDIO:I = 0x2

.field public static final SHARE_TO_QQ_TYPE_DEFAULT:I = 0x1

.field public static final SHARE_TO_QQ_TYPE_IMAGE:I = 0x5


# instance fields
.field public mViaShareQQType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    move-object v3, v0

    const-string v4, ""

    iput-object v4, v3, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/connect/share/QQShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/connect/share/QQShare;->c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/connect/share/QQShare;)Lcom/tencent/connect/auth/QQToken;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object v0, v1

    return-object v0
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v8, "openSDK_LOG.QQShare"

    const-string v9, "shareToMobileQQ() -- start."

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    const-string v9, "imageUrl"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v2

    const-string v9, "title"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v2

    const-string v9, "summary"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    const-string v8, "openSDK_LOG.QQShare"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "shareToMobileQQ -- imageUrl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v4

    invoke-static {v8}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    new-instance v9, Lcom/tencent/tauth/UiError;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    const/4 v11, -0x6

    const-string v12, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v8, "openSDK_LOG.QQShare"

    const-string v9, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v8

    const/4 v9, 0x1

    const-string v10, "SHARE_CHECK_SDK"

    const-string v11, "1000"

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v17, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-virtual/range {v8 .. v17}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move-object v8, v1

    const-string v9, "4.3.0"

    invoke-static {v8, v9}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/share/QQShare;->c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_1
    const-string v8, "openSDK_LOG.QQShare"

    const-string v9, "shareToMobileQQ() -- end"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/tencent/open/utils/b;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/tencent/open/utils/b;-><init>(Landroid/app/Activity;)V

    move-object v7, v8

    move-object v8, v7

    move-object v9, v4

    new-instance v10, Lcom/tencent/connect/share/QQShare$1;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    move-object v13, v2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lcom/tencent/connect/share/QQShare$1;-><init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v10}, Lcom/tencent/open/utils/b;->a(Ljava/lang/String;Lcom/tencent/open/utils/c;)V

    goto :goto_1

    :cond_3
    move-object v8, v2

    const-string v9, "imageUrl"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    const-string v9, "4.3.0"

    invoke-static {v8, v9}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "openSDK_LOG.QQShare"

    const-string v9, "shareToMobileQQ -- QQ Version is < 4.3.0 "

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/share/QQShare;->c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1

    :cond_4
    const-string v8, "openSDK_LOG.QQShare"

    const-string v9, "shareToMobileQQ -- QQ Version is > 4.3.0 "

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    move-object v9, v4

    new-instance v10, Lcom/tencent/connect/share/QQShare$2;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    move-object v13, v2

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lcom/tencent/connect/share/QQShare$2;-><init>(Lcom/tencent/connect/share/QQShare;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V

    invoke-static {v8, v9, v10}, Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/c;)V

    goto :goto_1

    :cond_5
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/connect/share/QQShare;->c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_1
.end method

.method private c(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 34

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const-string v22, "openSDK_LOG.QQShare"

    const-string v23, "doShareToQQ() -- start"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    const-string v24, "mqqapi://share/to_fri?src_type=app&version=1&file_type=news"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v22

    move-object/from16 v22, v4

    const-string v23, "imageUrl"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v7, v22

    move-object/from16 v22, v4

    const-string v23, "title"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    move-object/from16 v22, v4

    const-string v23, "summary"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v9, v22

    move-object/from16 v22, v4

    const-string v23, "targetUrl"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, v22

    move-object/from16 v22, v4

    const-string v23, "audio_url"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v11, v22

    move-object/from16 v22, v4

    const-string v23, "req_type"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v12, v22

    move-object/from16 v22, v4

    const-string v23, "share_to_qq_ark_info"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v13, v22

    move-object/from16 v22, v4

    const-string v23, "cflag"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v14, v22

    move-object/from16 v22, v4

    const-string v23, "share_qq_ext_str"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v15, v22

    move-object/from16 v22, v3

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v22

    move-object/from16 v22, v16

    if-nez v22, :cond_0

    move-object/from16 v22, v4

    const-string v23, "appName"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v22

    :cond_0
    move-object/from16 v22, v4

    const-string v23, "imageLocalUrl"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v22

    const-string v22, "openSDK_LOG.QQShare"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doShareToQQ -- openid: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v19

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v7

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&image_url="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v7

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_1
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&file_data="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v17

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_2
    move-object/from16 v22, v8

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&title="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_3
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&description="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v9

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_4
    move-object/from16 v22, v18

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_5
    move-object/from16 v22, v10

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&url="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v10

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_6
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v22, v16

    move-object/from16 v20, v22

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x14

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v16

    const/16 v24, 0x0

    const/16 v25, 0x14

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    :cond_7
    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&app_name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v20

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_8
    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&open_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v19

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_9
    move-object/from16 v22, v11

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&audioUrl="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v11

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_a
    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&req_type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_to_qq_ark_info="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_b
    move-object/from16 v22, v15

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_qq_ext_str="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v15

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_c
    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&cflag="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v14

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v22, "openSDK_LOG.QQShare"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doShareToQQ -- url: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    const-string v24, "requireApi"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    const/16 v27, 0x0

    const-string v28, "shareToNativeQQ"

    aput-object v28, v26, v27

    invoke-static/range {v22 .. v25}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v22, Landroid/content/Intent;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    const-string v24, "android.intent.action.VIEW"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v22

    move-object/from16 v22, v20

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v22, v20

    const-string v23, "pkg_name"

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v22, v3

    const-string v23, "4.6.0"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f

    const-string v22, "openSDK_LOG.QQShare"

    const-string v23, "doShareToQQ, qqver below 4.6."

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v22

    const/16 v23, 0x2b5f

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v20

    const/16 v25, 0x2b5f

    invoke-virtual/range {v22 .. v25}, Lcom/tencent/connect/share/QQShare;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_d
    :goto_0
    const-string v22, "10"

    move-object/from16 v21, v22

    move/from16 v22, v14

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    const-string v22, "11"

    move-object/from16 v21, v22

    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_11

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQQ.XX"

    move-object/from16 v26, v21

    const-string v27, "3"

    const-string v28, "0"

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "0"

    const-string v31, "1"

    const-string v32, "0"

    invoke-virtual/range {v22 .. v32}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "SHARE_CHECK_SDK"

    const-string v25, "1000"

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v31, ""

    invoke-virtual/range {v22 .. v31}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_1
    const-string v22, "openSDK_LOG.QQShare"

    const-string v23, "doShareToQQ() --end"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string v22, "openSDK_LOG.QQShare"

    const-string v23, "doShareToQQ, qqver greater than 4.6."

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v22

    const-string v23, "shareToQQ"

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/tencent/connect/common/UIListenerManager;->setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v21, v22

    const/16 v22, 0x0

    move-object/from16 v23, v21

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_10

    const-string v22, "openSDK_LOG.QQShare"

    const-string v23, "doShareToQQ, last listener is not null, cancel it."

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v22, v2

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QQShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_d

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    const/16 v24, 0x2777

    move-object/from16 v25, v20

    const/16 v26, 0x1

    invoke-virtual/range {v22 .. v26}, Lcom/tencent/connect/share/QQShare;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQQ.XX"

    move-object/from16 v26, v21

    const-string v27, "3"

    const-string v28, "1"

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "0"

    const-string v31, "1"

    const-string v32, "0"

    invoke-virtual/range {v22 .. v32}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    const/16 v23, 0x1

    const-string v24, "SHARE_CHECK_SDK"

    const-string v25, "1000"

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x1

    const-string v31, "hasActivityForIntent fail"

    invoke-virtual/range {v22 .. v31}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ() -- start."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    const-string v14, "imageUrl"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v3

    const-string v14, "title"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    move-object v13, v3

    const-string v14, "summary"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v13, v3

    const-string v14, "targetUrl"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    move-object v13, v3

    const-string v14, "imageLocalUrl"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v3

    const-string v14, "req_type"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move v10, v13

    const-string v13, "openSDK_LOG.QQShare"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "shareToQQ -- type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v10

    packed-switch v13, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v13, v10

    const/4 v14, 0x6

    if-ne v13, v14, :cond_1

    move-object v13, v2

    const-string v14, "5.0.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0xf

    const-string v17, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u5e94\u7528\u5206\u4eab\u53ea\u652f\u6301\u624bQ5.0\u53ca\u5176\u4ee5\u4e0a\u7248\u672c"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, app share is not support below qq5.0."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ, app share is not support below qq5.0."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    move-object v13, v1

    const-string v14, "1"

    iput-object v14, v13, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    move-object v13, v1

    const-string v14, "3"

    iput-object v14, v13, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    move-object v13, v1

    const-string v14, "2"

    iput-object v14, v13, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    move-object v13, v1

    const-string v14, "4"

    iput-object v14, v13, Lcom/tencent/connect/share/QQShare;->mViaShareQQType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v13, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x1

    const-string v17, "mqq"

    aput-object v17, v15, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    move-object v13, v3

    const-string v14, "targetUrl"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v13

    if-nez v13, :cond_2

    move-object v13, v2

    const-string v14, "4.5.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ sdcard is null--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ sdcard is null"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v13, v10

    const/4 v14, 0x5

    if-ne v13, v14, :cond_4

    move-object v13, v2

    const-string v14, "4.3.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u4f4e\u7248\u672c\u624bQ\u4e0d\u652f\u6301\u8be5\u9879\u529f\u80fd!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, version below 4.3 is not support."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ, version below 4.3 is not support."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object v13, v9

    invoke-static {v13}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ -- error: \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v13, v10

    const/4 v14, 0x5

    if-eq v13, v14, :cond_7

    move-object v13, v8

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    move-object v13, v8

    const-string v14, "http://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object v13, v8

    const-string v14, "https://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, targetUrl is empty or illegal.."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ, targetUrl is empty or illegal.."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v13, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "title\u4e0d\u80fd\u4e3a\u7a7a!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, title is empty."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ, title is empty."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move-object v13, v5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v5

    const-string v14, "http://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v5

    const-string v14, "https://"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    new-instance v13, Ljava/io/File;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v5

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v11, v13

    move-object v13, v11

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, image url is emprty or illegal."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQQ, image url is emprty or illegal."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    move-object v13, v6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x80

    if-le v13, v14, :cond_9

    move-object v13, v6

    const/16 v14, 0x80

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    move-object v13, v3

    const-string v14, "title"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v13, v7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x200

    if-le v13, v14, :cond_a

    move-object v13, v7

    const/16 v14, 0x200

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v13, v3

    const-string v14, "summary"

    move-object v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v13, v3

    const-string v14, "cflag"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move v11, v13

    move-object v13, v2

    move v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    const/4 v14, 0x1

    :goto_2
    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Z)Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, support share"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v16}, Lcom/tencent/connect/share/QQShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_3
    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ() -- end."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto :goto_2

    :cond_c
    :try_start_0
    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, "shareToQQ, don\'t support share, will show download dialog"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/tencent/open/TDialog;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v2

    const-string v16, ""

    move-object/from16 v17, v1

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/tencent/connect/share/QQShare;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tencent/connect/share/QQShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v13}, Lcom/tencent/open/TDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v13

    move-object v12, v13

    const-string v13, "openSDK_LOG.QQShare"

    const-string v14, " shareToQQ, TDialog.show not in main thread"

    move-object v15, v12

    invoke-static {v13, v14, v15}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v13, v12

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u6ca1\u6709\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\uff01"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
