.class public Lcom/tencent/open/web/security/SecureJsInterface;
.super Lcom/tencent/open/a$b;
.source "ProGuard"


# static fields
.field public static isPWDEdit:Z


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/open/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllEdit()V
    .locals 6

    move-object v0, p0

    const-string v2, "openSDK_LOG.SecureJsInterface"

    const-string v3, "-->clear all edit."

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/tencent/open/web/security/JniInterface;->clearAllPWD()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    const-string v2, "openSDK_LOG.SecureJsInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->clear all edit exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/RuntimeException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public curPosFromJS(Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const-string v5, "openSDK_LOG.SecureJsInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->curPosFromJS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    move v3, v5

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    :goto_0
    move v5, v3

    if-gez v5, :cond_0

    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "position is illegal."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v5

    move-object v4, v5

    const-string v5, "openSDK_LOG.SecureJsInterface"

    const-string v6, "-->curPosFromJS number format exception."

    move-object v7, v4

    invoke-static {v5, v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-boolean v5, Lcom/tencent/open/web/security/a;->c:Z

    if-nez v5, :cond_1

    :cond_1
    sget-boolean v5, Lcom/tencent/open/web/security/a;->b:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/tencent/open/web/security/a;->b:Z

    move v6, v3

    invoke-static {v5, v6}, Lcom/tencent/open/web/security/JniInterface;->BackSpaceChar(ZI)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    sput-boolean v5, Lcom/tencent/open/web/security/a;->b:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v5, v0

    sget-object v6, Lcom/tencent/open/web/security/a;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/tencent/open/web/security/JniInterface;->insetTextToArray(ILjava/lang/String;I)Z

    move-result v5

    const-string v5, "openSDK_LOG.SecureJsInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "curPosFromJS mKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/web/security/SecureJsInterface;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public customCallback()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public getMD5FromNative()Ljava/lang/String;
    .locals 7

    move-object v0, p0

    const-string v3, "openSDK_LOG.SecureJsInterface"

    const-string v4, "-->get md5 form native"

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    move-object v1, v3

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/tencent/open/web/security/JniInterface;->getPWDKeyToMD5(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    const-string v3, "openSDK_LOG.SecureJsInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->getMD5FromNative, MD5= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    const-string v3, "openSDK_LOG.SecureJsInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->get md5 form native exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isPasswordEdit(Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    const-string v4, "openSDK_LOG.SecureJsInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->is pswd edit, flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    move v2, v4

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    :goto_0
    move v4, v2

    if-eqz v4, :cond_0

    move v4, v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "is pswd edit flag is illegal."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v4

    move-object v3, v4

    const-string v4, "openSDK_LOG.SecureJsInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->is pswd edit exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    sput-boolean v4, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    sput-boolean v4, Lcom/tencent/open/web/security/SecureJsInterface;->isPWDEdit:Z

    goto :goto_1
.end method
