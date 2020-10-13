.class public Lcom/tencent/connect/share/QzonePublish;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final HULIAN_CALL_BACK:Ljava/lang/String; = "hulian_call_back"

.field public static final HULIAN_EXTRA_SCENE:Ljava/lang/String; = "hulian_extra_scene"

.field public static final PUBLISH_TO_QZONE_APP_NAME:Ljava/lang/String; = "appName"

.field public static final PUBLISH_TO_QZONE_EXTMAP:Ljava/lang/String; = "extMap"

.field public static final PUBLISH_TO_QZONE_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final PUBLISH_TO_QZONE_KEY_TYPE:Ljava/lang/String; = "req_type"

.field public static final PUBLISH_TO_QZONE_SUMMARY:Ljava/lang/String; = "summary"

.field public static final PUBLISH_TO_QZONE_TYPE_PUBLISHMOOD:I = 0x3

.field public static final PUBLISH_TO_QZONE_TYPE_PUBLISHVIDEO:I = 0x4

.field public static final PUBLISH_TO_QZONE_VIDEO_DURATION:Ljava/lang/String; = "videoDuration"

.field public static final PUBLISH_TO_QZONE_VIDEO_PATH:Ljava/lang/String; = "videoPath"

.field public static final PUBLISH_TO_QZONE_VIDEO_SIZE:Ljava/lang/String; = "videoSize"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/share/QzonePublish;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/connect/share/QzonePublish;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    return-void
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 34

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    const-string v22, "openSDK_LOG.QzonePublish"

    const-string v23, "doPublishToQzone() --start"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    const-string v24, "mqqapi://qzone/publish?src_type=app&version=1&file_type=news"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, v22

    move-object/from16 v22, v4

    const-string v23, "imageUrl"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v7, v22

    move-object/from16 v22, v4

    const-string v23, "summary"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    move-object/from16 v22, v4

    const-string v23, "req_type"

    const/16 v24, 0x3

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v9, v22

    move-object/from16 v22, v4

    const-string v23, "appName"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v10, v22

    move-object/from16 v22, v4

    const-string v23, "videoPath"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v11, v22

    move-object/from16 v22, v4

    const-string v23, "videoDuration"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v12, v22

    move-object/from16 v22, v4

    const-string v23, "videoSize"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v13, v22

    const-string v22, ""

    move-object/from16 v15, v22

    move-object/from16 v22, v4

    :try_start_0
    const-string v23, "extMap"

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v16, v22

    move-object/from16 v22, v16

    if-eqz v22, :cond_2

    move-object/from16 v22, v16

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v17, v22

    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v18, v22

    move-object/from16 v22, v17

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v19, v22

    :goto_0
    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v22, v19

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v20, v22

    move-object/from16 v22, v16

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v22, v18

    move-object/from16 v23, v20

    move-object/from16 v24, v16

    move-object/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v22

    :cond_0
    goto :goto_0

    :cond_1
    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->length()I

    move-result v22

    if-lez v22, :cond_2

    move-object/from16 v22, v18

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    move-object/from16 v15, v22

    :cond_2
    :goto_1
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    const-string v22, "openSDK_LOG.QzonePublish"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "openId:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v17

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, ""

    move-object/from16 v18, v22

    const/16 v22, 0x3

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    move-object/from16 v22, v7

    if-eqz v22, :cond_5

    const-string v22, "7"

    move-object/from16 v18, v22

    new-instance v22, Ljava/lang/StringBuffer;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v19, v22

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v20, v22

    const/16 v22, 0x0

    move/from16 v21, v22

    :goto_2
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

    if-eq v0, v1, :cond_3

    move-object/from16 v22, v19

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :catch_0
    move-exception v22

    move-object/from16 v16, v22

    const-string v22, "openSDK_LOG.QzonePublish"

    const-string v23, "publishToQzone()  --error parse extmap"

    move-object/from16 v24, v16

    invoke-static/range {v22 .. v24}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

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
    const/16 v22, 0x4

    move/from16 v23, v9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const-string v22, "8"

    move-object/from16 v18, v22

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&videoPath="

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

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&videoDuration="

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

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&videoSize="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-wide/from16 v24, v13

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    :cond_6
    move-object/from16 v22, v8

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

    :cond_7
    move-object/from16 v22, v16

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

    move-object/from16 v24, v16

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

    const-string v24, "&app_name="

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
    move-object/from16 v22, v17

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->e(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&open_id="

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

    :cond_a
    move-object/from16 v22, v15

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&share_qzone_ext_str="

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

    :cond_b
    move-object/from16 v22, v6

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "&req_type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v9

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

    const-string v22, "openSDK_LOG.QzonePublish"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v33, v23

    move-object/from16 v23, v33

    move-object/from16 v24, v33

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "doPublishToQzone, url: "

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

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

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

    move-object/from16 v22, v2

    move-object/from16 v23, v19

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/connect/share/QzonePublish;->a(Landroid/content/Intent;)Z

    move-result v22

    if-eqz v22, :cond_c

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    const/16 v24, 0x2778

    move-object/from16 v25, v19

    const/16 v26, 0x0

    invoke-virtual/range {v22 .. v26}, Lcom/tencent/connect/share/QzonePublish;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    const/16 v23, 0x0

    const-string v24, "SHARE_CHECK_SDK"

    const-string v25, "1000"

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

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

    const-string v31, "hasActivityForIntent success"

    invoke-virtual/range {v22 .. v31}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v26, "11"

    const-string v27, "3"

    const-string v28, "1"

    move-object/from16 v29, v18

    const-string v30, "0"

    const-string v31, "1"

    const-string v32, "0"

    invoke-virtual/range {v22 .. v32}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v22, "openSDK_LOG"

    const-string v23, "doPublishToQzone() --end"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v22, "openSDK_LOG.QzonePublish"

    const-string v23, "doPublishToQzone() target activity not found"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    const/16 v23, 0x1

    const-string v24, "SHARE_CHECK_SDK"

    const-string v25, "1000"

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

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

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v22

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ANDROIDQQ.SHARETOQZ.XX"

    const-string v26, "11"

    const-string v27, "3"

    const-string v28, "1"

    move-object/from16 v29, v18

    const-string v30, "0"

    const-string v31, "1"

    const-string v32, "0"

    invoke-virtual/range {v22 .. v32}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "publishToQzone() -- start"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    if-nez v9, :cond_0

    move-object v9, v3

    new-instance v10, Lcom/tencent/tauth/UiError;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, -0x6

    const-string v13, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "-->publishToQzone, params is null"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v9

    const/4 v10, 0x1

    const-string v11, "SHARE_CHECK_SDK"

    const-string v12, "1000"

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3a\u7a7a"

    invoke-virtual/range {v9 .. v18}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v9, v1

    invoke-static {v9}, Lcom/tencent/open/utils/k;->e(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v9, v3

    new-instance v10, Lcom/tencent/tauth/UiError;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, -0xf

    const-string v13, "\u624bQ\u7248\u672c\u8fc7\u4f4e\uff0c\u8bf7\u4e0b\u8f7d\u5b89\u88c5\u6700\u65b0\u7248\u624bQ"

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "-->publishToQzone, this is not support below qq 5.9.5"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v9

    const/4 v10, 0x1

    const-string v11, "SHARE_CHECK_SDK"

    const-string v12, "1000"

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "publicToQzone, this is not support below qq 5.9.5"

    invoke-virtual/range {v9 .. v18}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    new-instance v9, Lcom/tencent/open/TDialog;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    const-string v12, ""

    move-object v13, v0

    const-string v14, ""

    invoke-virtual {v13, v14}, Lcom/tencent/connect/share/QzonePublish;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v0

    iget-object v15, v15, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct/range {v10 .. v15}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v9}, Lcom/tencent/open/TDialog;->show()V

    goto :goto_0

    :cond_1
    move-object v9, v1

    invoke-static {v9}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    if-nez v9, :cond_5

    move-object v9, v2

    const-string v10, "appName"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    :cond_2
    :goto_1
    move-object v9, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v2

    const-string v10, "appName"

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v9, v2

    const-string v10, "req_type"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move v5, v9

    move v9, v5

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    move-object v9, v2

    const-string v10, "imageUrl"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    if-eqz v9, :cond_7

    move-object v9, v6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move-object v10, v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    move-object v9, v6

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v8, v9

    move-object v9, v8

    invoke-static {v9}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v6

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, -0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x14

    if-le v9, v10, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    const/4 v11, 0x0

    const/16 v12, 0x14

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto :goto_1

    :cond_6
    move-object v9, v2

    const-string v10, "imageUrl"

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/tencent/connect/share/QzonePublish;->b(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "publishToQzone() --end"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    goto/16 :goto_0

    :cond_8
    move v9, v5

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    move-object v9, v2

    const-string v10, "videoPath"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    invoke-static {v9}, Lcom/tencent/open/utils/k;->h(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "publishToQzone() video url invalid"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v3

    new-instance v10, Lcom/tencent/tauth/UiError;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, -0x5

    const-string v13, "\u8bf7\u9009\u62e9\u6709\u6548\u7684\u89c6\u9891\u6587\u4ef6"

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto/16 :goto_0

    :cond_9
    new-instance v9, Landroid/media/MediaPlayer;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    move-object v7, v9

    move-object v9, v7

    new-instance v10, Lcom/tencent/connect/share/QzonePublish$1;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v0

    move-object v13, v6

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcom/tencent/connect/share/QzonePublish$1;-><init>(Lcom/tencent/connect/share/QzonePublish;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    move-object v9, v7

    new-instance v10, Lcom/tencent/connect/share/QzonePublish$2;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v0

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Lcom/tencent/connect/share/QzonePublish$2;-><init>(Lcom/tencent/connect/share/QzonePublish;Lcom/tencent/tauth/IUiListener;)V

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    move-object v9, v7

    move-object v10, v6

    :try_start_0
    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    move-object v9, v7

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    goto :goto_3

    :catch_0
    move-exception v9

    move-object v8, v9

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "publishToQzone() exception(s) occurred when preparing mediaplayer"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v3

    new-instance v10, Lcom/tencent/tauth/UiError;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, -0x5

    const-string v13, "\u8bf7\u9009\u62e9\u6709\u6548\u7684\u89c6\u9891\u6587\u4ef6"

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_4

    :cond_a
    move-object v9, v3

    new-instance v10, Lcom/tencent/tauth/UiError;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/4 v12, -0x5

    const-string v13, "\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    const-string v9, "openSDK_LOG.QzonePublish"

    const-string v10, "publishToQzone() error--end\u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v9

    const/4 v10, 0x1

    const-string v11, "SHARE_CHECK_SDK"

    const-string v12, "1000"

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/connect/share/QzonePublish;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v18, "publishToQzone() \u8bf7\u9009\u62e9\u652f\u6301\u7684\u5206\u4eab\u7c7b\u578b"

    invoke-virtual/range {v9 .. v18}, Lcom/tencent/open/b/d;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V

    goto/16 :goto_0
.end method
