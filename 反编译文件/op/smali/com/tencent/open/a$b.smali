.class public Lcom/tencent/open/a$b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/util/List;Lcom/tencent/open/a$a;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/open/a$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v4, v11

    const/4 v11, 0x0

    move-object v5, v11

    move-object v11, v4

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_0

    move-object v11, v6

    move v12, v8

    aget-object v11, v11, v12

    move-object v9, v11

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    move-object v10, v11

    move-object v11, v10

    array-length v11, v11

    move-object v12, v2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_3

    move-object v11, v9

    move-object v5, v11

    :cond_0
    move-object v11, v5

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    move-object v6, v11

    move-object v11, v2

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x2

    move-object/from16 v16, v2

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x3

    move-object/from16 v16, v2

    const/16 v17, 0x3

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x4

    move-object/from16 v16, v2

    const/16 v17, 0x4

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x5

    move-object/from16 v16, v2

    const/16 v17, 0x5

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    :goto_1
    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v11

    move-object v7, v11

    const-string v11, "openSDK_LOG.JsBridge"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-->call, result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " | ReturnType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v7

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "void"

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    move-object v11, v7

    const-class v12, Ljava/lang/Void;

    if-ne v11, v12, :cond_4

    :cond_1
    move-object v11, v3

    if-eqz v11, :cond_2

    move-object v11, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/tencent/open/a$a;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :pswitch_0
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto :goto_1

    :pswitch_1
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto :goto_1

    :pswitch_2
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto/16 :goto_1

    :pswitch_3
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x2

    move-object/from16 v16, v2

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto/16 :goto_1

    :pswitch_4
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x2

    move-object/from16 v16, v2

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x3

    move-object/from16 v16, v2

    const/16 v17, 0x3

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto/16 :goto_1

    :pswitch_5
    move-object v11, v5

    move-object v12, v0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x2

    move-object/from16 v16, v2

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x3

    move-object/from16 v16, v2

    const/16 v17, 0x3

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x4

    move-object/from16 v16, v2

    const/16 v17, 0x4

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    goto/16 :goto_1

    :cond_4
    move-object v11, v3

    if-eqz v11, :cond_2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/tencent/open/a$b;->customCallback()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    move-object v12, v6

    if-eqz v12, :cond_6

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v11, v12}, Lcom/tencent/open/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    move-object v7, v11

    const-string v11, "openSDK_LOG.JsBridge"

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-->handler call mehtod ex. targetMethod: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v7

    invoke-static {v11, v12, v13}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v11, v3

    if-eqz v11, :cond_5

    move-object v11, v3

    invoke-virtual {v11}, Lcom/tencent/open/a$a;->a()V

    :cond_5
    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    move-object v11, v3

    if-eqz v11, :cond_8

    move-object v11, v3

    invoke-virtual {v11}, Lcom/tencent/open/a$a;->a()V

    :cond_8
    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public customCallback()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
