.class public Lcom/tencent/open/SocialOperation;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final GAME_FRIEND_ADD_MESSAGE:Ljava/lang/String; = "add_msg"

.field public static final GAME_FRIEND_LABEL:Ljava/lang/String; = "friend_label"

.field public static final GAME_FRIEND_OPENID:Ljava/lang/String; = "fopen_id"

.field public static final GAME_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final GAME_UNION_ID:Ljava/lang/String; = "unionid"

.field public static final GAME_UNION_NAME:Ljava/lang/String; = "union_name"

.field public static final GAME_ZONE_ID:Ljava/lang/String; = "zoneid"


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

.method private a(Landroid/app/Activity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lcom/tencent/open/TDialog;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const-string v6, ""

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/tencent/open/SocialOperation;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-direct/range {v4 .. v9}, Lcom/tencent/open/TDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    invoke-virtual {v3}, Lcom/tencent/open/TDialog;->show()V

    return-void
.end method


# virtual methods
.method public bindQQGroup(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup()  -- start"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, activity is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v15, v3

    if-nez v15, :cond_1

    move-object v15, v2

    const-string v16, "Bundle\u53c2\u6570\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, params is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v15, v2

    invoke-static {v15}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object v4, v15

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "mqqapi://gamesdk/bind_group?src_type=app&version=1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v5, v15

    move-object v15, v4

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&app_name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    :cond_2
    move-object v15, v3

    const-string v16, "unionid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    move-object v15, v6

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v2

    const-string v16, "\u6e38\u620f\u516c\u4f1aID\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, game union id is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&unionid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v15, v3

    const-string v16, "union_name"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    move-object v15, v7

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v2

    const-string v16, "\u6e38\u620f\u516c\u4f1a\u540d\u79f0\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, game union name is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&union_name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v15, v3

    const-string v16, "zoneid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v8, v15

    move-object v15, v8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v15, v2

    const-string v16, "\u6e38\u620f\u533a\u57dfID\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, game zone id  is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&zoneid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v15, v3

    const-string v16, "signature"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    move-object v15, v9

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v15, v2

    const-string v16, "\u6e38\u620f\u7b7e\u540d\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, game signature is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&signature="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v15, v1

    iget-object v15, v15, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v15}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v15

    move-object v10, v15

    move-object v15, v10

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&openid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object v15, v1

    invoke-virtual {v15}, Lcom/tencent/open/SocialOperation;->b()Landroid/os/Bundle;

    move-result-object v15

    move-object v11, v15

    move-object v15, v11

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v12, v15

    :goto_1
    move-object v15, v12

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v13, v15

    move-object v15, v11

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    move-object v15, v11

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v15, v2

    const-string v16, "Openid\u4e3a\u7a7a"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup, openid is empty."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v15, v5

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v11

    invoke-static/range {v17 .. v17}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v15, "openSDK_LOG.GameAppOperation"

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "-->bindQQGroup, url: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Landroid/content/Intent;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string v17, "android.intent.action.VIEW"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v15

    move-object v15, v12

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v1

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Lcom/tencent/open/SocialOperation;->a(Landroid/content/Intent;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object v15, v2

    const-string v16, "5.1.0"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bingQQGroup target activity found, qqver > 5.1.0"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    move-object/from16 v16, v12

    :try_start_0
    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "0"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bindQQGroup()  -- end"

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v15

    move-object v13, v15

    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bind group, start activity exception."

    move-object/from16 v17, v13

    invoke-static/range {v15 .. v17}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    goto :goto_2

    :cond_9
    const-string v15, "openSDK_LOG.GameAppOperation"

    const-string v16, "-->bind group, there is no activity, show download page."

    invoke-static/range {v15 .. v16}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ANDROIDSDK.BINDGROUP.XX"

    const-string v19, "18"

    const-string v20, "18"

    const-string v21, "1"

    invoke-virtual/range {v15 .. v21}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v1

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method public makeFriend(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->makeFriend()  -- start"

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v2

    if-nez v12, :cond_0

    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->makeFriend params is null"

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v14}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v16, "14"

    const-string v17, "18"

    const-string v18, "1"

    invoke-virtual/range {v12 .. v18}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v12, v2

    const-string v13, "fopen_id"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    move-object v12, v3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->make friend, fOpenid is empty."

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v14}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v16, "14"

    const-string v17, "18"

    const-string v18, "1"

    invoke-virtual/range {v12 .. v18}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v12, v2

    const-string v13, "friend_label"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v2

    const-string v13, "add_msg"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v1

    invoke-static {v12}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v12}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    const-string v12, "openSDK_LOG.GameAppOperation"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-->make friend, fOpenid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | label: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | openid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " | appid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "mqqapi://gamesdk/add_friend?src_type=app&version=1"

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v9, v12

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&fopen_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v12, v7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&open_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v7

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_2
    move-object v12, v8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&app_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_3
    move-object v12, v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&friend_label="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_4
    move-object v12, v5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&add_msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v5

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_5
    move-object v12, v6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object v12, v9

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "&app_name="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v6

    invoke-static {v14}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_6
    const-string v12, "openSDK_LOG.GameAppOperation"

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-->make friend, url: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v9

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v12

    move-object v12, v10

    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v12

    move-object v12, v0

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/tencent/open/SocialOperation;->a(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v1

    const-string v13, "5.1.0"

    invoke-static {v12, v13}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->makeFriend target activity found, qqver greater than 5.1.0"

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    move-object v13, v10

    :try_start_0
    invoke-virtual {v12, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v14}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v16, "14"

    const-string v17, "18"

    const-string v18, "0"

    invoke-virtual/range {v12 .. v18}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->makeFriend()  -- end"

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v12

    move-object v11, v12

    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->make friend, start activity exception."

    move-object v14, v11

    invoke-static {v12, v13, v14}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v14}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v16, "14"

    const-string v17, "18"

    const-string v18, "1"

    invoke-virtual/range {v12 .. v18}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v12, "openSDK_LOG.GameAppOperation"

    const-string v13, "-->make friend, there is no activity."

    invoke-static {v12, v13}, Lcom/tencent/open/a/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/tencent/open/SocialOperation;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v13}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lcom/tencent/open/SocialOperation;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-virtual {v14}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ANDROIDQQ.MAKEAFRIEND.XX"

    const-string v16, "14"

    const-string v17, "18"

    const-string v18, "1"

    invoke-virtual/range {v12 .. v18}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
