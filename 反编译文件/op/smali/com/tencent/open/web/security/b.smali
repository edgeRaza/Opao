.class public Lcom/tencent/open/web/security/b;
.super Lcom/tencent/open/a;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/open/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/open/a$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v8, "openSDK_LOG.SecureJsBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-->getResult, objectName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | methodName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move v5, v8

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v6, v8

    :goto_0
    move v8, v5

    move v9, v6

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    move-object v10, v3

    move v11, v5

    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/web/security/b;->a:Ljava/util/HashMap;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/open/a$b;

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_2

    const-string v8, "openSDK_LOG.SecureJsBridge"

    const-string v9, "-->handler != null"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v5

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    invoke-virtual {v8, v9, v10, v11}, Lcom/tencent/open/a$b;->call(Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$a;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v8, "openSDK_LOG.SecureJsBridge"

    const-string v9, "-->handler == null"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-virtual {v8}, Lcom/tencent/open/a$a;->a()V

    goto :goto_2
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v14, "openSDK_LOG.SecureJsBridge"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-->canHandleUrl---url = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v2

    if-nez v14, :cond_0

    const/4 v14, 0x0

    move v0, v14

    :goto_0
    return v0

    :cond_0
    move-object v14, v2

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object v3, v14

    move-object v14, v3

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "jsbridge"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    move v0, v14

    goto :goto_0

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v14

    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x7

    if-ge v14, v15, :cond_2

    const/4 v14, 0x0

    move v0, v14

    goto :goto_0

    :cond_2
    move-object v14, v5

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v6, v14

    move-object v14, v5

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v7, v14

    move-object v14, v5

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    move-object v14, v5

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v9, v14

    const-string v14, "openSDK_LOG.SecureJsBridge"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "-->canHandleUrl, objectName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " | methodName: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " | snStr: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v6

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object v14, v7

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object v14, v8

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v14, 0x0

    move v0, v14

    goto/16 :goto_0

    :cond_4
    move-object v14, v8

    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    move-wide v10, v14

    new-instance v14, Lcom/tencent/open/web/security/c;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    move-object/from16 v16, v1

    move-wide/from16 v17, v10

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    invoke-direct/range {v15 .. v20}, Lcom/tencent/open/web/security/c;-><init>(Landroid/webkit/WebView;JLjava/lang/String;Ljava/lang/String;)V

    move-object v12, v14

    move-object v14, v5

    const/4 v15, 0x6

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object v13, v14

    move-object v14, v0

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v13

    move-object/from16 v18, v12

    invoke-virtual/range {v14 .. v18}, Lcom/tencent/open/web/security/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$a;)V

    const/4 v14, 0x1

    move v0, v14

    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v12, v14

    const/4 v14, 0x0

    move v0, v14

    goto/16 :goto_0
.end method
