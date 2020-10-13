.class Lcom/tencent/connect/auth/a$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/tencent/connect/auth/a;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/tencent/connect/auth/a$b;->c:Lcom/tencent/connect/auth/a;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/tencent/connect/auth/a$b;->d:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/tencent/connect/auth/a$b;->a:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/tencent/connect/auth/a$b;->b:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/auth/a$b;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/connect/auth/a$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/tencent/connect/auth/a$b;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v0

    new-instance v4, Lcom/tencent/tauth/UiError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, -0x4

    const-string v7, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/connect/auth/a$b;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v1}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    move-object v2, v3

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_H5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v11, v2

    const-string v12, "ret"

    const/4 v13, -0x6

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lcom/tencent/connect/auth/a$b;->a:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    move-object v4, v2

    invoke-interface {v3, v4}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    :cond_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v3, v1

    iget-object v3, v3, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v14, v3

    move-object v3, v14

    move-object v4, v14

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    iget-object v4, v4, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/auth/a$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/tencent/connect/auth/a$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_H5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v11, v1

    iget v11, v11, Lcom/tencent/tauth/UiError;->errorCode:I

    move-object v12, v2

    const/4 v13, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->c:Lcom/tencent/connect/auth/a;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/tencent/connect/auth/a;->a(Lcom/tencent/connect/auth/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/connect/auth/a$b;->e:Lcom/tencent/tauth/IUiListener;

    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$b;->a:Ljava/lang/String;

    goto :goto_0
.end method
