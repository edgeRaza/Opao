.class public Lcom/tencent/connect/auth/QQToken;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final AUTH_QQ:I = 0x2

.field public static final AUTH_QZONE:I = 0x3

.field public static final AUTH_WEB:I = 0x1

.field private static f:Landroid/content/SharedPreferences;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/connect/auth/QQToken;->d:I

    move-object v2, v0

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Lcom/tencent/connect/auth/QQToken;->e:J

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized a()Landroid/content/SharedPreferences;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v3, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/tencent/connect/auth/QQToken;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "token_info_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tencent/connect/auth/QQToken;->f:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/tencent/connect/auth/QQToken;->f:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11

    move-object v0, p0

    const-class v9, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "QQToken"

    const-string v7, "loadJsonPreference context null"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    monitor-exit v9

    return-object v0

    :cond_0
    move-object v6, v0

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v0

    :try_start_1
    invoke-static {v6}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    const/4 v6, 0x0

    move-object v2, v6

    const/4 v6, 0x0

    move-object v3, v6

    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-nez v6, :cond_2

    const-string v6, "QQToken"

    const-string v7, "loadJsonPreference encoded value null"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v3

    const-string v7, "asdfghjk"

    invoke-static {v6, v7}, Lcom/tencent/open/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v4, v6

    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v6

    move-object v6, v2

    move-object v0, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    :try_start_3
    const-string v6, "QQToken"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadJsonPreference decode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    const-class v11, Lcom/tencent/connect/auth/QQToken;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "QQToken"

    const-string v6, "saveJsonPreference context null"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v11

    return-void

    :cond_0
    move-object v5, v0

    if-eqz v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move-object v5, v1

    :try_start_1
    const-string v6, "expires_in"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v7, v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    move-wide v3, v5

    move-object v5, v1

    const-string v6, "expires_time"

    move-wide v7, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v5, v0

    :try_start_2
    invoke-static {v5}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "asdfghjk"

    invoke-static {v5, v6}, Lcom/tencent/open/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v3

    if-nez v5, :cond_5

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v2, v5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/tencent/connect/auth/QQToken;->a()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getAuthSource()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/connect/auth/QQToken;->d:I

    move v0, v1

    return v0
.end method

.method public getExpireTimeInSecond()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/connect/auth/QQToken;->e:J

    move-wide v0, v1

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/QQToken;->c:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object v3, v0

    iget-wide v3, v3, Lcom/tencent/connect/auth/QQToken;->e:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadSession(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    invoke-static {v3}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    const-string v3, "QQToken"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "login loadSession"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public saveSession(Lorg/json/JSONObject;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/connect/auth/QQToken;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    const-string v3, "QQToken"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "login saveSession"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/QQToken;->b:Ljava/lang/String;

    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/tencent/connect/auth/QQToken;->e:J

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v2

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/tencent/connect/auth/QQToken;->e:J

    :cond_0
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/connect/auth/QQToken;->a:Ljava/lang/String;

    return-void
.end method

.method public setAuthSource(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/connect/auth/QQToken;->d:I

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/connect/auth/QQToken;->c:Ljava/lang/String;

    return-void
.end method
