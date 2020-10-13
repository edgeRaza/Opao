.class public Lcom/tencent/connect/UnionInfo;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final URL_GET_UNION_ID:Ljava/lang/String; = "https://graph.qq.com/oauth2.0/me"


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


# virtual methods
.method public getUnionId(Lcom/tencent/tauth/IUiListener;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/tencent/connect/UnionInfo;->a()Landroid/os/Bundle;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    const-string v5, "unionid"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/connect/common/BaseApi$TempRequestListener;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/common/BaseApi$TempRequestListener;-><init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/connect/UnionInfo;->b:Lcom/tencent/connect/auth/QQToken;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v5

    const-string v6, "https://graph.qq.com/oauth2.0/me"

    move-object v7, v2

    const-string v8, "GET"

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/tencent/open/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    return-void
.end method
