.class public Lcom/tencent/connect/share/QzoneShare;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final SHARE_TO_QQ_APP_NAME:Ljava/lang/String; = "appName"

.field public static final SHARE_TO_QQ_AUDIO_URL:Ljava/lang/String; = "audio_url"

.field public static final SHARE_TO_QQ_EXT_INT:Ljava/lang/String; = "cflag"

.field public static final SHARE_TO_QQ_EXT_STR:Ljava/lang/String; = "share_qq_ext_str"

.field public static final SHARE_TO_QQ_IMAGE_LOCAL_URL:Ljava/lang/String; = "imageLocalUrl"

.field public static final SHARE_TO_QQ_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_TO_QQ_SITE:Ljava/lang/String; = "site"

.field public static final SHARE_TO_QQ_SUMMARY:Ljava/lang/String; = "summary"

.field public static final SHARE_TO_QQ_TARGET_URL:Ljava/lang/String; = "targetUrl"

.field public static final SHARE_TO_QQ_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_TO_QZONE_EXTMAP:Ljava/lang/String; = "extMap"

.field public static final SHARE_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final SHARE_TO_QZONE_TYPE_APP:I = 0x6

.field public static final SHARE_TO_QZONE_TYPE_IMAGE:I = 0x5

.field public static final SHARE_TO_QZONE_TYPE_IMAGE_TEXT:I = 0x1

.field public static final SHARE_TO_QZONE_TYPE_NO_TYPE:I


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field public mViaShareQzoneType:Ljava/lang/String;


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

    iput-object v4, v3, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/connect/share/QzoneShare;->c:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tencent/connect/share/QzoneShare;->d:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tencent/connect/share/QzoneShare;->e:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tencent/connect/share/QzoneShare;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/share/QzoneShare;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/connect/share/QzoneShare;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 34

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const-string v22, "openSDK_LOG.QzoneShare"

    const-string v23, "doshareToQzone() --start"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    const-string v24, "mqqapi://share/to_qzone?src_type=app&version=1&file_type=news"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v22

    move-object/from16 v22, v4

    const-string v23, "imageUrl"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

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

    const-string v23, "appName"

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

    const-string v22, ""

    move-object/from16 v16, v22

    move-object/from16 v22, v4

    :try_start_0
    const-string v23, "extMap"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v17, v22

    move-object/from16 v22, v17

    if-eqz v22, :cond_1

    move-object/from16 v22, v17

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v18, v22

    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v22

    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v20, v22

    :goto_0
    move-object/from16 v22, v20

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v20

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v21, v22

    move-object/from16 v22, v19

    move-object/from16 v23, v21

    move-object/from16 v24, v17

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v22

    goto :goto_0

    :cond_0
    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    if-lez v22, :cond_1

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    move-object/from16 v16, v22

    :cond_1
    :goto_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v18, v22

    const-string v22, "openSDK_LOG.QzoneShare"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "openId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v7

    if-eqz v22, :cond_5

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v22

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    const/16 v22, 0x9

    :goto_2
    move/from16 v20, v22

    const/16 v22, 0x0

    move/from16 v21, v22

    :goto_3
    move/from16 v22, v21

    move/from16 v23, v20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    move-object/from16 v22, v19

    move-object/from16 v23, v7

    move/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move/from16 v22, v21

    move/from16 v23, v20

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v22, v19

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :catch_0
    move-exception v22

    move-object/from16 v17, v22

    const-string v22, "openSDK_LOG.QzoneShare"

    const-string v23, "ShareToQzone()  --error parse extmap"

    move-object/from16 v24, v17

    invoke-static/range {v22 .. v24}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    goto :goto_2

    :cond_4
    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&image_url="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    :cond_5
    move-object/from16 v22, v8

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_6

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

    :cond_6
    move-object/from16 v22, v9

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_7

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

    :cond_7
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_8
    move-object/from16 v22, v10

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_9

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

    :cond_9
    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&app_name="

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

    :cond_a
    move-object/from16 v22, v18

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&open_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v18

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
    move-object/from16 v22, v11

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

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

    :cond_c
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

    move-object/from16 v22, v15

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

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

    :cond_d
    move-object/from16 v22, v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_e

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_qzone_ext_str="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v16

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

    :cond_e
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

    const-string v22, "openSDK_LOG.QzoneShare"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doshareToQzone, url: "

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

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

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

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v22, v19

    const-string v23, "pkg_name"

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v22, v3

    const-string v23, "4.6.0"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v22

    const/16 v23, 0x2b60

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v24, v19

    const/16 v25, 0x2b60

    invoke-virtual/range {v22 .. v25}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_f
    const-string v22, "openSDK_LOG.QzoneShare"

    const-string v23, "doShareToQzone() -- QQ Version is < 4.6.0"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_4
    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v26, "11"

    const-string v27, "3"

    const-string v28, "0"

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x4

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

    :goto_5
    const-string v22, "openSDK_LOG"

    const-string v23, "doShareToQzone() --end"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string v22, "openSDK_LOG.QzoneShare"

    const-string v23, "doShareToQzone() -- QQ Version is > 4.6.0"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v22

    const-string v23, "shareToQzone"

    move-object/from16 v24, v5

    invoke-virtual/range {v22 .. v24}, Lcom/tencent/connect/common/UIListenerManager;->setListnerWithAction(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v20, v22

    const/16 v22, 0x0

    move-object/from16 v23, v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_12

    const-string v22, "openSDK_LOG.QzoneShare"

    const-string v23, "doShareToQzone() -- do listener onCancel()"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    const/16 v24, 0x2778

    move-object/from16 v25, v19

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/tencent/connect/share/QzoneShare;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    goto/16 :goto_4

    :cond_13
    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v26, "11"

    const-string v27, "3"

    const-string v28, "1"

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x4

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

    goto/16 :goto_5
.end method


# virtual methods
.method public releaseResource()V
    .locals 0

    return-void
.end method

.method public shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() -- start"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    if-nez v13, :cond_0

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() params is null"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v13, v3

    const-string v14, "title"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v3

    const-string v14, "summary"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    move-object v13, v3

    const-string v14, "targetUrl"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    move-object v13, v3

    const-string v14, "imageUrl"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object v8, v13

    move-object v13, v2

    invoke-static {v13}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    if-nez v13, :cond_2

    move-object v13, v3

    const-string v14, "appName"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    :cond_1
    :goto_1
    move-object v13, v3

    const-string v14, "req_type"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move v10, v13

    move v13, v10

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    move-object v13, v1

    const-string v14, "1"

    iput-object v14, v13, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    :goto_2
    move v13, v10

    packed-switch v13, :pswitch_data_1

    :pswitch_1
    move-object v13, v5

    invoke-static {v13}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v6

    invoke-static {v13}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v8

    if-eqz v13, :cond_4

    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->c:Z

    :goto_3
    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->d:Z

    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->e:Z

    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->f:Z

    :goto_4
    invoke-static {}, Lcom/tencent/open/utils/k;->b()Z

    move-result v13

    if-nez v13, :cond_6

    move-object v13, v2

    const-string v14, "4.5.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

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

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() sdcard is null--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "\u5206\u4eab\u56fe\u7247\u5931\u8d25\uff0c\u68c0\u6d4b\u4e0d\u5230SD\u5361!"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x14

    if-le v13, v14, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v9

    const/4 v15, 0x0

    const/16 v16, 0x14

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    goto/16 :goto_1

    :pswitch_2
    move-object v13, v1

    const-string v14, "4"

    iput-object v14, v13, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    move-object v13, v1

    const-string v14, "1"

    iput-object v14, v13, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_4
    move-object v13, v1

    const-string v14, "2"

    iput-object v14, v13, Lcom/tencent/connect/share/QzoneShare;->mViaShareQzoneType:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    move-object v13, v2

    const-string v14, "5.0.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

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

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "-->shareToQzone, app share is not support below qq5.0."

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone, app share is not support below qq5.0."

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v13, "http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

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

    move-object v7, v13

    move-object v13, v3

    const-string v14, "targetUrl"

    move-object v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->c:Z

    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->d:Z

    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->e:Z

    move-object v13, v1

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->f:Z

    goto/16 :goto_4

    :pswitch_7
    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x5

    const-string v17, "\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() error--end\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone() \u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6765\u81ea"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u7684\u5206\u4eab"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->c:Z

    goto/16 :goto_3

    :cond_5
    move-object v13, v1

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/tencent/connect/share/QzoneShare;->c:Z

    goto/16 :goto_3

    :cond_6
    move-object v13, v1

    iget-boolean v13, v13, Lcom/tencent/connect/share/QzoneShare;->c:Z

    if-eqz v13, :cond_8

    move-object v13, v7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x5

    const-string v17, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() targetUrl null error--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "targetUrl\u4e3a\u5fc5\u586b\u9879\uff0c\u8bf7\u8865\u5145\u540e\u5206\u4eab"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v13, v7

    invoke-static {v13}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x5

    const-string v17, "targetUrl\u6709\u8bef"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() targetUrl error--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "targetUrl\u6709\u8bef"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v13, v1

    iget-boolean v13, v13, Lcom/tencent/connect/share/QzoneShare;->d:Z

    if-eqz v13, :cond_c

    const-string v13, ""

    move-object v5, v13

    const-string v13, ""

    move-object v6, v13

    move-object v13, v3

    const-string v14, "title"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    const-string v14, "summary"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    move-object v13, v9

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    move-object v13, v3

    const-string v14, "appName"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v13, v8

    if-eqz v13, :cond_b

    move-object v13, v8

    if-eqz v13, :cond_f

    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_f

    :cond_b
    move-object v13, v1

    iget-boolean v13, v13, Lcom/tencent/connect/share/QzoneShare;->f:Z

    if-eqz v13, :cond_13

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u7eaf\u56fe\u5206\u4eab\uff0cimageUrl \u4e0d\u80fd\u4e3a\u7a7a"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() imageUrl is null -- end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone() imageUrl is null"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object v13, v1

    iget-boolean v13, v13, Lcom/tencent/connect/share/QzoneShare;->e:Z

    if-eqz v13, :cond_d

    move-object v13, v5

    invoke-static {v13}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

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

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() title is null--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone() title is null"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object v13, v5

    invoke-static {v13}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0xc8

    if-le v13, v14, :cond_e

    move-object v13, v5

    const/16 v14, 0xc8

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v3

    const-string v14, "title"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object v13, v6

    invoke-static {v13}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object v13, v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x258

    if-le v13, v14, :cond_9

    move-object v13, v6

    const/16 v14, 0x258

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    move-object v13, v3

    const-string v14, "summary"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const/4 v13, 0x0

    move v11, v13

    :goto_6
    move v13, v11

    move-object v14, v8

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_11

    move-object v13, v8

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v12, v13

    move-object v13, v12

    invoke-static {v13}, Lcom/tencent/open/utils/k;->g(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    move-object v13, v12

    invoke-static {v13}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    move-object v13, v8

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, -0x1

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_11
    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_12

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

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() MSG_PARAM_IMAGE_URL_FORMAT_ERROR--end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone() \u975e\u6cd5\u7684\u56fe\u7247\u5730\u5740!"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    move-object v13, v3

    const-string v14, "imageUrl"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_13
    move-object v13, v2

    const-string v14, "4.6.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() qqver greater than 4.6.0"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v2

    move-object v14, v8

    new-instance v15, Lcom/tencent/connect/share/QzoneShare$1;

    move-object/from16 v23, v15

    move-object/from16 v15, v23

    move-object/from16 v16, v23

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v20}, Lcom/tencent/connect/share/QzoneShare$1;-><init>(Lcom/tencent/connect/share/QzoneShare;Lcom/tencent/tauth/IUiListener;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v13, v14, v15}, Lcom/tencent/connect/share/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tencent/open/utils/c;)V

    :goto_7
    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() --end"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move-object v13, v2

    const-string v14, "4.2.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_18

    move-object v13, v2

    const-string v14, "4.6.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_18

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() qqver between 4.2.0 and 4.6.0, will use qqshare"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/tencent/connect/share/QQShare;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/tencent/connect/share/QQShare;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    move-object v11, v13

    move-object v13, v8

    if-eqz v13, :cond_16

    move-object v13, v8

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_16

    move-object v13, v8

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v12, v13

    move v13, v10

    const/4 v14, 0x5

    if-ne v13, v14, :cond_15

    move-object v13, v12

    invoke-static {v13}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_15

    move-object v13, v4

    new-instance v14, Lcom/tencent/tauth/UiError;

    move-object/from16 v23, v14

    move-object/from16 v14, v23

    move-object/from16 v15, v23

    const/16 v16, -0x6

    const-string v17, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v13

    const/4 v14, 0x1

    const-string v15, "SHARE_CHECK_SDK"

    const-string v16, "1000"

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    const-string v22, "shareToQzone()\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u7eaf\u56fe\u5206\u4eab\u4e0d\u652f\u6301\u7f51\u8def\u56fe\u7247"

    invoke-virtual/range {v13 .. v22}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    move-object v13, v3

    const-string v14, "imageLocalUrl"

    move-object v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object v13, v2

    const-string v14, "4.5.0"

    invoke-static {v13, v14}, Lcom/tencent/open/utils/k;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_17

    move-object v13, v3

    const-string v14, "cflag"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_17
    move-object v13, v11

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lcom/tencent/connect/share/QQShare;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto/16 :goto_7

    :cond_18
    const-string v13, "openSDK_LOG.QzoneShare"

    const-string v14, "shareToQzone() qqver below 4.2.0, will show download dialog"

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/tencent/open/TDialog;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    move-object v15, v2

    const-string v16, ""

    move-object/from16 v17, v1

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lcom/tencent/connect/share/QzoneShare;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tencent/connect/share/QzoneShare;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v19, v0

    invoke-direct/range {v14 .. v19}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v13}, Lcom/tencent/open/TDialog;->show()V

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
