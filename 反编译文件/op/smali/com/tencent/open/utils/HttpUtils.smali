.class public Lcom/tencent/open/utils/HttpUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/HttpUtils$a;,
        Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
        Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 6

    move-object v0, p0

    const/4 v4, -0x1

    move v1, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_2

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-static {v4}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v4

    move v1, v4

    move v4, v1

    if-gez v4, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    move v1, v4

    :cond_0
    :goto_0
    move v4, v1

    move v0, v4

    return v0

    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    move v1, v4

    goto :goto_0

    :cond_2
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const-string v8, ""

    move-object v1, v8

    move-object v8, v0

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v8

    move-object v8, v0

    const-string v9, "Content-Encoding"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gzip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    invoke-direct {v9, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v8

    :cond_0
    const/4 v8, 0x0

    move v6, v8

    const/16 v8, 0x200

    new-array v8, v8, [B

    move-object v7, v8

    :goto_0
    move-object v8, v3

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v6, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    move-object v8, v4

    move-object v9, v7

    const/4 v10, 0x0

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    move-object v8, v1

    move-object v0, v8

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string v4, "add_share"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "upload_pic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "add_topic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "set_user_face"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "add_t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "add_pic_t"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "add_pic_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_0

    move-object v3, v2

    const-string v4, "add_video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "requireApi"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    const/4 v2, 0x0

    move-object v1, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_0
    :goto_0
    move-object v2, v1

    move-object v0, v2

    return-object v0

    :cond_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "http.proxyHost"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    if-nez v8, :cond_0

    const-string v8, ""

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v8

    const/4 v8, -0x1

    move v3, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    move v4, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    add-int/lit8 v3, v3, 0x1

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Disposition: form-data; name=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    move-object v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\r\n--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :cond_2
    goto :goto_1

    :cond_3
    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move-object v8, v0

    if-nez v8, :cond_0

    const-string v8, ""

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v8

    const/4 v8, 0x1

    move v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_1
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v4, v8

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    move-object v8, v5

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_1

    move-object v8, v5

    instance-of v8, v8, [Ljava/lang/String;

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v5

    instance-of v8, v8, [Ljava/lang/String;

    if-eqz v8, :cond_6

    move v8, v2

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    move v2, v8

    :goto_2
    move-object v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_3

    goto :goto_1

    :cond_2
    move-object v8, v1

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v6

    array-length v9, v9

    if-ge v8, v9, :cond_5

    move v8, v7

    if-nez v8, :cond_4

    move-object v8, v1

    move-object v9, v6

    move v10, v7

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    move v11, v7

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_4

    :cond_5
    :goto_5
    goto/16 :goto_1

    :cond_6
    move v8, v2

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    move v2, v8

    :goto_6
    move-object v8, v1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_5

    :cond_7
    move-object v8, v1

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto :goto_6

    :cond_8
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static getErrorCodeFromException(Ljava/io/IOException;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Ljava/io/CharConversionException;

    if-eqz v1, :cond_0

    const/16 v1, -0x14

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/charset/MalformedInputException;

    if-eqz v1, :cond_1

    const/16 v1, -0x15

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v1, :cond_2

    const/16 v1, -0x16

    move v0, v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_3

    const/16 v1, -0x17

    move v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_4

    const/16 v1, -0x18

    move v0, v1

    goto :goto_0

    :cond_4
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/http/ConnectionClosedException;

    if-eqz v1, :cond_5

    const/16 v1, -0x19

    move v0, v1

    goto :goto_0

    :cond_5
    move-object v1, v0

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_6

    const/16 v1, -0x1a

    move v0, v1

    goto :goto_0

    :cond_6
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v1, :cond_7

    const/16 v1, -0x1b

    move v0, v1

    goto :goto_0

    :cond_7
    move-object v1, v0

    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_8

    const/16 v1, -0x1c

    move v0, v1

    goto :goto_0

    :cond_8
    move-object v1, v0

    instance-of v1, v1, Ljava/net/HttpRetryException;

    if-eqz v1, :cond_9

    const/16 v1, -0x1d

    move v0, v1

    goto :goto_0

    :cond_9
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v1, :cond_a

    const/4 v1, -0x7

    move v0, v1

    goto :goto_0

    :cond_a
    move-object v1, v0

    instance-of v1, v1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_b

    const/4 v1, -0x8

    move v0, v1

    goto :goto_0

    :cond_b
    move-object v1, v0

    instance-of v1, v1, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v1, :cond_c

    const/16 v1, -0x1e

    move v0, v1

    goto :goto_0

    :cond_c
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v1, :cond_d

    const/16 v1, -0x1f

    move v0, v1

    goto :goto_0

    :cond_d
    move-object v1, v0

    instance-of v1, v1, Ljava/net/MalformedURLException;

    if-eqz v1, :cond_e

    const/4 v1, -0x3

    move v0, v1

    goto :goto_0

    :cond_e
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v1, :cond_f

    const/16 v1, -0x20

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move-object v1, v0

    instance-of v1, v1, Ljava/io/InvalidClassException;

    if-eqz v1, :cond_10

    const/16 v1, -0x21

    move v0, v1

    goto/16 :goto_0

    :cond_10
    move-object v1, v0

    instance-of v1, v1, Ljava/io/InvalidObjectException;

    if-eqz v1, :cond_11

    const/16 v1, -0x22

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move-object v1, v0

    instance-of v1, v1, Ljava/io/NotActiveException;

    if-eqz v1, :cond_12

    const/16 v1, -0x23

    move v0, v1

    goto/16 :goto_0

    :cond_12
    move-object v1, v0

    instance-of v1, v1, Ljava/io/NotSerializableException;

    if-eqz v1, :cond_13

    const/16 v1, -0x24

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move-object v1, v0

    instance-of v1, v1, Ljava/io/OptionalDataException;

    if-eqz v1, :cond_14

    const/16 v1, -0x25

    move v0, v1

    goto/16 :goto_0

    :cond_14
    move-object v1, v0

    instance-of v1, v1, Ljava/io/StreamCorruptedException;

    if-eqz v1, :cond_15

    const/16 v1, -0x26

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move-object v1, v0

    instance-of v1, v1, Ljava/io/WriteAbortedException;

    if-eqz v1, :cond_16

    const/16 v1, -0x27

    move v0, v1

    goto/16 :goto_0

    :cond_16
    move-object v1, v0

    instance-of v1, v1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_17

    const/16 v1, -0x28

    move v0, v1

    goto/16 :goto_0

    :cond_17
    move-object v1, v0

    instance-of v1, v1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_18

    const/16 v1, -0x29

    move v0, v1

    goto/16 :goto_0

    :cond_18
    move-object v1, v0

    instance-of v1, v1, Ljavax/net/ssl/SSLKeyException;

    if-eqz v1, :cond_19

    const/16 v1, -0x2a

    move v0, v1

    goto/16 :goto_0

    :cond_19
    move-object v1, v0

    instance-of v1, v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_1a

    const/16 v1, -0x2b

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    move-object v1, v0

    instance-of v1, v1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v1, :cond_1b

    const/16 v1, -0x2c

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    move-object v1, v0

    instance-of v1, v1, Ljava/net/BindException;

    if-eqz v1, :cond_1c

    const/16 v1, -0x2d

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    move-object v1, v0

    instance-of v1, v1, Ljava/net/ConnectException;

    if-eqz v1, :cond_1d

    const/16 v1, -0x2e

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    move-object v1, v0

    instance-of v1, v1, Ljava/net/NoRouteToHostException;

    if-eqz v1, :cond_1e

    const/16 v1, -0x2f

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    move-object v1, v0

    instance-of v1, v1, Ljava/net/PortUnreachableException;

    if-eqz v1, :cond_1f

    const/16 v1, -0x30

    move v0, v1

    goto/16 :goto_0

    :cond_1f
    move-object v1, v0

    instance-of v1, v1, Ljava/io/SyncFailedException;

    if-eqz v1, :cond_20

    const/16 v1, -0x31

    move v0, v1

    goto/16 :goto_0

    :cond_20
    move-object v1, v0

    instance-of v1, v1, Ljava/io/UTFDataFormatException;

    if-eqz v1, :cond_21

    const/16 v1, -0x32

    move v0, v1

    goto/16 :goto_0

    :cond_21
    move-object v1, v0

    instance-of v1, v1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_22

    const/16 v1, -0x33

    move v0, v1

    goto/16 :goto_0

    :cond_22
    move-object v1, v0

    instance-of v1, v1, Ljava/net/UnknownServiceException;

    if-eqz v1, :cond_23

    const/16 v1, -0x34

    move v0, v1

    goto/16 :goto_0

    :cond_23
    move-object v1, v0

    instance-of v1, v1, Ljava/io/UnsupportedEncodingException;

    if-eqz v1, :cond_24

    const/16 v1, -0x35

    move v0, v1

    goto/16 :goto_0

    :cond_24
    move-object v1, v0

    instance-of v1, v1, Ljava/util/zip/ZipException;

    if-eqz v1, :cond_25

    const/16 v1, -0x36

    move v0, v1

    goto/16 :goto_0

    :cond_25
    const/4 v1, -0x2

    move v0, v1

    goto/16 :goto_0
.end method

.method public static getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v14, Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    move-object v4, v14

    move-object v14, v4

    new-instance v15, Lorg/apache/http/conn/scheme/Scheme;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string v17, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v18

    const/16 v19, 0x50

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v14, v15}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v14

    :try_start_0
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v14, v15, :cond_3

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v14

    move-object v5, v14

    move-object v14, v5

    sget-object v15, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v14, v15}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    move-object v14, v4

    new-instance v15, Lorg/apache/http/conn/scheme/Scheme;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string v17, "https"

    move-object/from16 v18, v5

    const/16 v19, 0x1bb

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v14, v15}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_0
    new-instance v14, Lorg/apache/http/params/BasicHttpParams;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    move-object v5, v14

    const/4 v14, 0x0

    move-object v6, v14

    move-object v14, v1

    if-eqz v14, :cond_0

    move-object v14, v1

    move-object v15, v2

    invoke-static {v14, v15}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v14

    move-object v6, v14

    :cond_0
    const/4 v14, 0x0

    move v7, v14

    const/4 v14, 0x0

    move v8, v14

    move-object v14, v6

    if-eqz v14, :cond_1

    move-object v14, v6

    const-string v15, "Common_HttpConnectionTimeout"

    invoke-virtual {v14, v15}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v14

    move v7, v14

    move-object v14, v6

    const-string v15, "Common_SocketConnectionTimeout"

    invoke-virtual {v14, v15}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v14

    move v8, v14

    :cond_1
    move v14, v7

    if-nez v14, :cond_4

    const/16 v14, 0x3a98

    :goto_1
    move v7, v14

    move v14, v8

    if-nez v14, :cond_5

    const/16 v14, 0x7530

    :goto_2
    move v8, v14

    move-object v14, v5

    move v15, v7

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object v14, v5

    move v15, v8

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    move-object v14, v5

    sget-object v15, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    move-object v14, v5

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AndroidSDK_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    move-object v14, v5

    move-object v15, v9

    invoke-static {v14, v15}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v14, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    move-object v10, v14

    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    move-object v11, v14

    move-object v14, v1

    invoke-static {v14}, Lcom/tencent/open/utils/HttpUtils;->getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$a;

    move-result-object v14

    move-object v12, v14

    move-object v14, v12

    if-eqz v14, :cond_2

    new-instance v14, Lorg/apache/http/HttpHost;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v12

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/tencent/open/utils/HttpUtils$a;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Lcom/tencent/open/utils/HttpUtils$a;->b:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v13, v14

    move-object v14, v11

    invoke-interface {v14}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    const-string v15, "http.route.default-proxy"

    move-object/from16 v16, v13

    invoke-interface/range {v14 .. v16}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    move-result-object v14

    :cond_2
    move-object v14, v11

    move-object v1, v14

    return-object v1

    :cond_3
    move-object v14, v4

    :try_start_1
    new-instance v15, Lorg/apache/http/conn/scheme/Scheme;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string v17, "https"

    new-instance v18, Lcom/tencent/open/utils/j;

    move-object/from16 v20, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v20

    invoke-direct/range {v19 .. v19}, Lcom/tencent/open/utils/j;-><init>()V

    const/16 v19, 0x1bb

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v14, v15}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v5, v14

    move-object v14, v4

    new-instance v15, Lorg/apache/http/conn/scheme/Scheme;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    const-string v17, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v18

    const/16 v19, 0x1bb

    invoke-direct/range {v16 .. v19}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v14, v15}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v14

    goto/16 :goto_0

    :cond_4
    move v14, v7

    goto/16 :goto_1

    :cond_5
    move v14, v8

    goto/16 :goto_2
.end method

.method public static getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$a;
    .locals 12

    move-object v0, p0

    move-object v6, v0

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move-object v6, v0

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    move-object v1, v6

    move-object v6, v1

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-nez v6, :cond_2

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    move v3, v6

    move v6, v3

    if-nez v6, :cond_3

    move-object v6, v0

    invoke-static {v6}, Lcom/tencent/open/utils/HttpUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    invoke-static {v6}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;)I

    move-result v6

    move v5, v6

    move-object v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v5

    if-ltz v6, :cond_3

    new-instance v6, Lcom/tencent/open/utils/HttpUtils$a;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    move v9, v5

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/tencent/open/utils/HttpUtils$a;-><init>(Ljava/lang/String;ILcom/tencent/open/utils/HttpUtils$1;)V

    move-object v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v20, v2

    if-eqz v20, :cond_1

    move-object/from16 v20, v2

    const-string v21, "connectivity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/ConnectivityManager;

    move-object/from16 v6, v20

    move-object/from16 v20, v6

    if-eqz v20, :cond_1

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    move-object/from16 v7, v20

    move-object/from16 v20, v7

    if-eqz v20, :cond_0

    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    new-instance v20, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    const-string v22, "network unavailable"

    invoke-direct/range {v21 .. v22}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_1
    const/16 v20, 0x0

    move-object/from16 v6, v20

    move-object/from16 v20, v5

    if-eqz v20, :cond_3

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v5

    invoke-direct/range {v21 .. v22}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v6, v20

    :goto_0
    const-string v20, ""

    move-object/from16 v7, v20

    move-object/from16 v20, v6

    const-string v21, "appid_for_getting_config"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v8, v20

    move-object/from16 v20, v6

    const-string v21, "appid_for_getting_config"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v20, v2

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    invoke-static/range {v20 .. v22}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v20

    move-object/from16 v9, v20

    const/16 v20, 0x0

    move-object/from16 v10, v20

    const/16 v20, 0x0

    move/from16 v11, v20

    move-object/from16 v20, v4

    const-string v21, "GET"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v20, v6

    invoke-static/range {v20 .. v20}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v12, v20

    move/from16 v20, v11

    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v11, v20

    const-string v20, "openSDK_LOG.HttpUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-->openUrl2 before url ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v3

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    :goto_1
    const-string v20, "openSDK_LOG.HttpUtils"

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-->openUrl2 encodedParam ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " -- url = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v21, v12

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v10, v20

    move-object/from16 v20, v10

    const-string v21, "Accept-Encoding"

    const-string v22, "gzip"

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-interface/range {v20 .. v21}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    move-object/from16 v13, v20

    move-object/from16 v20, v13

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    move/from16 v14, v20

    move/from16 v20, v14

    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    move-object/from16 v20, v12

    invoke-static/range {v20 .. v20}, Lcom/tencent/open/utils/HttpUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v7, v20

    new-instance v20, Lcom/tencent/open/utils/k$a;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v7

    move/from16 v23, v11

    invoke-direct/range {v21 .. v23}, Lcom/tencent/open/utils/k$a;-><init>(Ljava/lang/String;I)V

    move-object/from16 v2, v20

    return-object v2

    :cond_3
    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v6, v20

    goto/16 :goto_0

    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "&"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v3, v20

    goto/16 :goto_1

    :cond_5
    move-object/from16 v20, v4

    const-string v21, "POST"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    new-instance v20, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v20

    move-object/from16 v20, v12

    const-string v21, "Accept-Encoding"

    const-string v22, "gzip"

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Landroid/os/Bundle;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v13, v20

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v14, v20

    :goto_3
    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v20, v14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v15, v20

    move-object/from16 v20, v6

    move-object/from16 v21, v15

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v16, v20

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    instance-of v0, v0, [B

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v20, v13

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    check-cast v22, [B

    check-cast v22, [B

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_6
    goto :goto_3

    :cond_7
    move-object/from16 v20, v6

    const-string v21, "method"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v20, v6

    const-string v21, "method"

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v20, v12

    const-string v21, "Content-Type"

    const-string v22, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v12

    const-string v21, "Connection"

    const-string v22, "Keep-Alive"

    invoke-virtual/range {v20 .. v22}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v14, v20

    move-object/from16 v20, v14

    const-string v21, "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v14

    move-object/from16 v21, v6

    const-string v22, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-static/range {v21 .. v22}, Lcom/tencent/open/utils/HttpUtils;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->size()I

    move-result v20

    move/from16 v15, v20

    const/16 v20, -0x1

    move/from16 v16, v20

    move-object/from16 v20, v14

    const-string v21, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-object/from16 v17, v20

    :goto_4
    move-object/from16 v20, v17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v20, v17

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v18, v20

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v20, v14

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\"; filename=\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v14

    const-string v21, "Content-Type: content/unknown\r\n\r\n"

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v13

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v19, v20

    move-object/from16 v20, v19

    if-eqz v20, :cond_9

    move-object/from16 v20, v14

    move-object/from16 v21, v19

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_9
    move/from16 v20, v16

    move/from16 v21, v15

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    move-object/from16 v20, v14

    const-string v21, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_a
    goto/16 :goto_4

    :cond_b
    move-object/from16 v20, v14

    const-string v21, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"

    invoke-static/range {v21 .. v21}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v15, v20

    move/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v11, v20

    move-object/from16 v20, v14

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v20, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v15

    invoke-direct/range {v21 .. v22}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v16, v20

    move-object/from16 v20, v12

    move-object/from16 v21, v16

    invoke-virtual/range {v20 .. v21}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object/from16 v20, v12

    move-object/from16 v10, v20

    goto/16 :goto_2

    :cond_c
    new-instance v20, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v24, v22

    move-object/from16 v22, v24

    move-object/from16 v23, v24

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "http status code error:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v23, v14

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;-><init>(Ljava/lang/String;)V

    throw v20
.end method

.method public static request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    const-string v22, "openSDK_LOG.HttpUtils"

    const-string v23, "OpenApi request"

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v4

    move-object/from16 v7, v22

    move-object/from16 v22, v4

    move-object/from16 v8, v22

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v23, "http"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v23

    move-object/from16 v24, v3

    const-string v25, "https://openmobile.qq.com/"

    invoke-virtual/range {v23 .. v25}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v7, v22

    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v31, v22

    move-object/from16 v22, v31

    move-object/from16 v23, v31

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v23

    move-object/from16 v24, v3

    const-string v25, "https://openmobile.qq.com/"

    invoke-virtual/range {v23 .. v25}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v4

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    :cond_0
    move-object/from16 v22, v3

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    invoke-static/range {v22 .. v24}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v9, v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v10, v22

    const/16 v22, 0x0

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    const/16 v22, 0x0

    move/from16 v17, v22

    move-object/from16 v22, v3

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v22

    const-string v23, "Common_HttpRetryCount"

    invoke-virtual/range {v22 .. v23}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v22

    move/from16 v18, v22

    const-string v22, "OpenConfig_test"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   appid:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     url:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v22, v18

    if-nez v22, :cond_2

    const/16 v22, 0x3

    :goto_0
    move/from16 v18, v22

    const-string v22, "OpenConfig_test"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v31, v23

    move-object/from16 v23, v31

    move-object/from16 v24, v31

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v24, v18

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   appid:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "     url:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object/from16 v24, v6

    move-object/from16 v25, v5

    :try_start_0
    invoke-static/range {v22 .. v25}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;

    move-result-object v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v20, v22

    move-object/from16 v22, v20

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v22

    move-object/from16 v9, v22

    move-object/from16 v22, v9

    :try_start_1
    const-string v23, "ret"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v22

    move/from16 v12, v22

    :goto_1
    move-object/from16 v22, v19

    :try_start_2
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/tencent/open/utils/k$a;->b:J

    move-wide/from16 v22, v0

    move-wide/from16 v13, v22

    move-object/from16 v22, v19

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/tencent/open/utils/k$a;->c:J

    move-wide/from16 v22, v0
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_8

    move-wide/from16 v15, v22

    :goto_2
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v9

    move-object/from16 v2, v22

    return-object v2

    :cond_2
    move/from16 v22, v18

    goto/16 :goto_0

    :catch_0
    move-exception v22

    move-object/from16 v21, v22

    const/16 v22, -0x4

    move/from16 v12, v22

    goto :goto_1

    :catch_1
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const/16 v22, -0x7

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v10, v22

    :goto_3
    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22

    :catch_2
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/16 v22, -0x8

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    move/from16 v22, v17

    move/from16 v23, v18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v10, v22

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22

    :catch_3
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->printStackTrace()V

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    move-object/from16 v22, v20

    :try_start_3
    const-string v23, "http status code error:"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v22

    move-object/from16 v22, v20

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v22

    move/from16 v12, v22

    :goto_4
    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22

    :catch_4
    move-exception v22

    move-object/from16 v21, v22

    move-object/from16 v22, v21

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v22, -0x9

    move/from16 v12, v22

    goto :goto_4

    :catch_5
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V

    move-object/from16 v22, v19

    throw v22

    :catch_6
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/16 v22, -0x3

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22

    :catch_7
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v22, v19

    invoke-static/range {v22 .. v22}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v22

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22

    :catch_8
    move-exception v22

    move-object/from16 v19, v22

    move-object/from16 v22, v19

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->printStackTrace()V

    const/16 v22, -0x4

    move/from16 v12, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v13, v22

    const-wide/16 v22, 0x0

    move-wide/from16 v15, v22

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v22

    move-object/from16 v23, v8

    move-wide/from16 v24, v10

    move-wide/from16 v26, v13

    move-wide/from16 v28, v15

    move/from16 v30, v12

    invoke-virtual/range {v22 .. v30}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;JJJI)V

    move-object/from16 v22, v19

    throw v22
.end method

.method public static requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "openSDK_LOG.HttpUtils"

    const-string v7, "OpenApi requestAsync"

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/tencent/open/utils/HttpUtils$1;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/tencent/open/utils/HttpUtils$1;-><init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    invoke-virtual {v6}, Lcom/tencent/open/utils/HttpUtils$1;->start()V

    return-void
.end method
