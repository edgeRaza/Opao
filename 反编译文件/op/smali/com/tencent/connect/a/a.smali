.class public Lcom/tencent/connect/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->c:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->e:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/a/a;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/connect/a/a;->g:Z

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-boolean v5, Lcom/tencent/connect/a/a;->g:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    :try_start_0
    sget-object v5, Lcom/tencent/connect/a/a;->d:Ljava/lang/reflect/Method;

    sget-object v6, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v3

    const-string v4, "Common_ta_enable"

    invoke-virtual {v3, v4}, Lcom/tencent/open/utils/f;->b(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    move v3, v2

    move v0, v3

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v3, v4}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/connect/a/a;->f:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/tencent/connect/a/a;->f:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aqc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :try_start_0
    const-string v5, "com.tencent.stat.StatConfig"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v5, "com.tencent.stat.StatService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    sget-object v5, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const-string v6, "reportQQ"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->c:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const-string v6, "trackCustomEvent"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    const-class v10, [Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->d:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const-string v6, "commitEvents"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->e:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v6, "setEnableStatService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/tencent/connect/a/a;->f:Ljava/lang/reflect/Method;

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    sget-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v6, "setAutoExceptionCaught"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v6, "setEnableSmartReporting"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v6, "setSendPeriodMinutes"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const/16 v10, 0x5a0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v5, "com.tencent.stat.StatReportStrategy"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v4, v5

    sget-object v5, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const-string v6, "setStatSendStrategy"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/tencent/connect/a/a;->a:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v4

    const-string v11, "PERIOD"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v5, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const-string v6, "startStatService"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v6, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x1

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x2

    const-string v10, "com.tencent.stat.common.StatConstants"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "VERSION"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/connect/a/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tencent/open/b/d;->a()Lcom/tencent/open/b/d;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    const-string v7, "1"

    const-string v8, "11"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    invoke-virtual/range {v3 .. v11}, Lcom/tencent/open/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v3, Lcom/tencent/connect/a/a;->g:Z

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/connect/a/a;->b(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :try_start_0
    sget-object v3, Lcom/tencent/connect/a/a;->c:Ljava/lang/reflect/Method;

    sget-object v4, Lcom/tencent/connect/a/a;->b:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move-object v8, v1

    invoke-virtual {v8}, Lcom/tencent/connect/auth/QQToken;->getOpenId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_2
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
