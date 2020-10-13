.class public Lcom/tencent/open/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/a$b;,
        Lcom/tencent/open/a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/open/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/tencent/open/a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/open/a$b;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/a;->a:Ljava/util/HashMap;

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

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

    const-string v8, "openSDK_LOG.JsBridge"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getResult---objName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " methodName = "

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

    iget-object v8, v8, Lcom/tencent/open/a;->a:Ljava/util/HashMap;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tencent/open/a$b;

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_2

    const-string v8, "openSDK_LOG.JsBridge"

    const-string v9, "call----"

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
    const-string v8, "openSDK_LOG.JsBridge"

    const-string v9, "not call----objName NOT FIND"

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-virtual {v8}, Lcom/tencent/open/a$a;->a()V

    goto :goto_2
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v13, "openSDK_LOG.JsBridge"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->canHandleUrl---url = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v2

    if-nez v13, :cond_0

    const/4 v13, 0x0

    move v0, v13

    :goto_0
    return v0

    :cond_0
    move-object v13, v2

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    move-object v3, v13

    move-object v13, v3

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    const-string v14, "jsbridge"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v4

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v13

    move-object v13, v5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x6

    if-ge v13, v14, :cond_2

    const/4 v13, 0x0

    move v0, v13

    goto :goto_0

    :cond_2
    move-object v13, v5

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v6, v13

    move-object v13, v5

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object v7, v13

    const-wide/16 v13, 0x4

    move-wide v8, v13

    move-object v13, v5

    const/4 v14, 0x4

    move-object v15, v5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v13

    move-object v10, v13

    new-instance v13, Lcom/tencent/open/a$a;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v1

    move-wide/from16 v16, v8

    move-object/from16 v18, v2

    invoke-direct/range {v14 .. v18}, Lcom/tencent/open/a$a;-><init>(Landroid/webkit/WebView;JLjava/lang/String;)V

    move-object v11, v13

    move-object v13, v1

    invoke-virtual {v13}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    move-object v13, v0

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v13 .. v17}, Lcom/tencent/open/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$a;)V

    const/4 v13, 0x1

    move v0, v13

    goto/16 :goto_0
.end method
