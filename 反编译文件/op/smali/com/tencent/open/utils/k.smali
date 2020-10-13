.class public Lcom/tencent/open/utils/k;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/k$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/k;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/k;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/open/utils/k;->d:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/tencent/open/utils/k;->e:I

    const-string v0, "0123456789ABCDEF"

    sput-object v0, Lcom/tencent/open/utils/k;->g:Ljava/lang/String;

    return-void
.end method

.method private static a(I)C
    .locals 5

    move v0, p0

    move v2, v0

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    move v0, v2

    move v2, v0

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/16 v2, 0x30

    move v3, v0

    add-int/2addr v2, v3

    int-to-char v2, v2

    move v1, v2

    :goto_0
    move v2, v1

    move v0, v2

    return v0

    :cond_0
    const/16 v2, 0x61

    move v3, v0

    const/16 v4, 0xa

    add-int/lit8 v3, v3, -0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    move v1, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13

    move-object v0, p0

    new-instance v8, Landroid/os/Bundle;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v1, v8

    move-object v8, v0

    if-eqz v8, :cond_1

    move-object v8, v0

    :try_start_0
    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v2

    move-object v3, v8

    move-object v8, v3

    array-length v8, v8

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    move-object v8, v3

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    move-object v8, v6

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    array-length v8, v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v8, v1

    move-object v0, v8

    return-object v0

    :catch_0
    move-exception v8

    move-object v2, v8

    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    move-object v10, v4

    move-object v11, v5

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    invoke-static/range {v6 .. v17}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    new-instance v10, Landroid/os/Bundle;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    move-object v9, v10

    move-object v10, v9

    const-string v11, "platform"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "result"

    move-object v12, v0

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "code"

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "tmcost"

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "rate"

    move-object v12, v3

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "cmd"

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "uin"

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "appid"

    move-object v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "share_type"

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "detail"

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "os_ver"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "network"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/open/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "apn"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "model_name"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "sdk_ver"

    const-string v12, "3.3.0.lite"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "packagename"

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    const-string v11, "app_ver"

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/tencent/open/utils/e;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    move-object v0, v10

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    new-instance v13, Landroid/os/Bundle;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v12, v13

    move-object v13, v12

    const-string v14, "openid"

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "report_type"

    move-object v15, v1

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "act_type"

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "via"

    move-object v15, v3

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "app_id"

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "result"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "type"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "login_status"

    move-object v15, v7

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "need_user_auth"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "to_uin"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "call_source"

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    const-string v14, "to_type"

    move-object v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v12

    move-object v0, v13

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    move-object v0, v4

    :goto_0
    move-object v4, v0

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    move-object v1, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    move-object v3, v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_3
    const-string v4, ""

    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v0, v4

    const-string v4, "openSDK_LOG.Util"

    const-string v5, "getUserIp SocketException "

    move-object v6, v0

    invoke-static {v4, v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, ""

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const-string v8, "UTF-8"

    move-object v4, v8

    move-object v8, v2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v2

    move-object v4, v8

    :cond_1
    move-object v8, v0

    move-object v9, v4

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    move v9, v1

    if-gt v8, v9, :cond_2

    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_1
    move v8, v6

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    move-object v8, v0

    move v9, v6

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    move v7, v8

    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v9, v1

    if-le v8, v9, :cond_4

    move-object v8, v0

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    move-object v8, v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    :cond_3
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    :cond_4
    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move-object v8, v0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v5, v8

    const-string v8, "openSDK_LOG.Util"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Util.subString has exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v5, v0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    move v1, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move v7, v1

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_2

    move-object v5, v0

    move v6, v3

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    :cond_1
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    if-nez v9, :cond_0

    new-instance v9, Lorg/json/JSONObject;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v9

    :cond_0
    move-object v9, v1

    if-eqz v9, :cond_2

    move-object v9, v1

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    move-object v9, v2

    move-object v3, v9

    move-object v9, v3

    array-length v9, v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_0
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_2

    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    move-object v9, v6

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    array-length v9, v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    move-object v9, v7

    const/4 v10, 0x0

    move-object v11, v7

    const/4 v12, 0x0

    :try_start_0
    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v9, v7

    const/4 v10, 0x1

    move-object v11, v7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x0

    :try_start_1
    aget-object v10, v10, v11

    move-object v11, v7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v8, v9

    goto :goto_1

    :catch_1
    move-exception v9

    move-object v8, v9

    const-string v9, "openSDK_LOG.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decodeUrlToJson has exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v9, v0

    move-object v0, v9

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v5, Landroid/content/Intent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object v4, v5

    move-object v5, v4

    new-instance v6, Landroid/content/ComponentName;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v4

    move-object v6, v3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v8, v1

    move-object v2, v8

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    :try_start_0
    invoke-static {v8}, Lcom/tencent/open/utils/k;->f(Landroid/content/Context;)Z

    move-result v8

    move v3, v8

    move v8, v3

    if-eqz v8, :cond_0

    move-object v8, v0

    const-string v9, "com.tencent.mtt"

    const-string v10, "com.tencent.mtt.MainActivity"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v8, 0x1

    move v0, v8

    :goto_1
    return v0

    :cond_0
    move-object v8, v0

    const-string v9, "com.android.browser"

    const-string v10, "com.android.browser.BrowserActivity"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v4, v8

    move v8, v3

    if-eqz v8, :cond_1

    move-object v8, v0

    :try_start_1
    const-string v9, "com.android.browser"

    const-string v10, "com.android.browser.BrowserActivity"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v5, v8

    move-object v8, v0

    :try_start_2
    const-string v9, "com.google.android.browser"

    const-string v10, "com.android.browser.BrowserActivity"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    goto :goto_0

    :catch_2
    move-exception v8

    move-object v6, v8

    move-object v8, v0

    :try_start_3
    const-string v9, "com.android.chrome"

    const-string v10, "com.google.android.apps.chrome.Main"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v8

    move-object v7, v8

    const/4 v8, 0x0

    move v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v0

    :try_start_4
    const-string v9, "com.google.android.browser"

    const-string v10, "com.android.browser.BrowserActivity"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v8

    move-object v5, v8

    move-object v8, v0

    :try_start_5
    const-string v9, "com.android.chrome"

    const-string v10, "com.google.android.apps.chrome.Main"

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/tencent/open/utils/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v8

    move-object v6, v8

    const/4 v8, 0x0

    move v0, v8

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-static {v2}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    const-string v3, "com.tencent.minihd.qq"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    const-string v3, "4.1"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    move-object v2, v0

    const-string v3, "com.tencent.tim"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v0

    const-string v3, "4.1"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    move-object v2, v0

    const-string v3, "com.tencent.tim"

    invoke-static {v2, v3}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    move-object v0, p0

    move-object v3, v0

    const-string v4, "auth://"

    const-string v5, "http://"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/open/utils/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v1, v3

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v4, v0

    if-ne v3, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v3, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    sget-object v3, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/open/utils/k;->a:Ljava/lang/String;

    sget-object v3, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    sget-object v4, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tencent/open/utils/k;->d:Ljava/lang/String;

    move-object v3, v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v3, Lcom/tencent/open/utils/k;->e:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    const-string v3, "openSDK_LOG.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageInfo has exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v2, v3

    const-string v3, "openSDK_LOG.Util"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageInfo has exception: "

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

    goto :goto_1
.end method

.method public static b()Z
    .locals 4

    const/4 v2, 0x0

    move-object v0, v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    move v2, v1

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    move-object v0, p0

    move-object v4, v0

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_2

    move-object v4, v2

    move v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    const/4 v9, 0x0

    move-object v10, v0

    if-ne v9, v10, :cond_0

    const-string v9, ""

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    move-object v9, v0

    :try_start_0
    const-string v10, "location"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/location/LocationManager;

    move-object v1, v9

    new-instance v9, Landroid/location/Criteria;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Landroid/location/Criteria;-><init>()V

    move-object v2, v9

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    move-object v9, v2

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/location/Criteria;->setAccuracy(I)V

    move-object v9, v1

    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    if-eqz v9, :cond_2

    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    move-object v4, v9

    const/4 v9, 0x0

    move-object v10, v4

    if-ne v9, v10, :cond_1

    const-string v9, ""

    move-object v0, v9

    goto :goto_0

    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    move-wide v5, v9

    move-object v9, v4

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-wide v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/tencent/open/utils/k;->f:Ljava/lang/String;

    sget-object v9, Lcom/tencent/open/utils/k;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    goto :goto_0

    :cond_2
    :goto_1
    const-string v9, ""

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v1, v9

    const-string v9, "openSDK_LOG.Util"

    const-string v10, "getLocation>>>"

    move-object v11, v1

    invoke-static {v9, v10, v11}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const-string v2, ""

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/open/utils/k;->b:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    move-object v0, p0

    move-object v3, v0

    const-string v4, "auth://"

    const-string v5, "http://"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/utils/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/utils/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v3, v2

    move-object v0, v3

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v1, v3

    new-instance v3, Lorg/json/JSONObject;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const-string v2, ""

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/open/utils/k;->a:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "{value : false}"

    move-object v0, v2

    :cond_0
    move-object v2, v0

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "{value : true}"

    move-object v0, v2

    :cond_1
    move-object v2, v0

    const-string v3, "allback("

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    const-string v3, "[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z"

    const-string v4, "$1"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_2
    move-object v2, v0

    const-string v3, "online[0]="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{online:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 12

    move-object v0, p0

    const-wide/16 v6, 0x0

    move-wide v1, v6

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v6, v7

    move v4, v6

    move-object v6, v3

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    move-object v7, v3

    iget v7, v7, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v6, v7

    move v5, v6

    move v6, v4

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move v8, v5

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    move-wide v1, v6

    :goto_0
    move-wide v6, v1

    const-wide/high16 v8, 0x401a000000000000L    # 6.5

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    const/4 v6, 0x1

    move v0, v6

    :goto_1
    return v0

    :catch_0
    move-exception v6

    move-object v3, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const-string v2, ""

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/open/utils/k;->c:Ljava/lang/String;

    sget-object v2, Lcom/tencent/open/utils/k;->c:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string v2, "5.9.5"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    move-object v1, v0

    const-string v2, "com.tencent.tim"

    invoke-static {v1, v2}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move-object v9, v0

    move-object v1, v9

    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    move-object v2, v9

    move-object v9, v2

    move-object v10, v0

    invoke-static {v10}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->update([B)V

    move-object v9, v2

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v9

    move-object v9, v3

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_0

    move-object v9, v5

    move v10, v7

    aget-byte v9, v9, v10

    move v8, v9

    move-object v9, v4

    move v10, v8

    const/4 v11, 0x4

    ushr-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Lcom/tencent/open/utils/k;->a(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v9, v4

    move v10, v8

    invoke-static {v10}, Lcom/tencent/open/utils/k;->a(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v1, v9

    :cond_1
    :goto_1
    move-object v9, v1

    move-object v0, v9

    return-object v0

    :catch_0
    move-exception v9

    move-object v2, v9

    const-string v9, "openSDK_LOG.Util"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encrypt has exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 11

    move-object v0, p0

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.tencent.mtt"

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    move-object v1, v7

    move-object v7, v1

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v2, v7

    move-object v7, v2

    const-string v8, "4.3"

    invoke-static {v7, v8}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_0

    move-object v7, v2

    const-string v8, "4.4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_0

    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    move-object v8, v3

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/open/utils/k;->a([B)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v4

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    const-string v7, "d8391a394d4a179e6fe7bdb8a301258b"

    move-object v6, v7

    move-object v7, v5

    const-string v8, "d8391a394d4a179e6fe7bdb8a301258b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    move v0, v7

    :goto_0
    return v0

    :cond_0
    :goto_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v5, v7

    :try_start_2
    const-string v7, "openSDK_LOG.Util"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isQQBrowerAvailable has exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v2, v7

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    move v2, v3

    move-object v3, v0

    invoke-static {v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    const-string v4, "com.tencent.minihd.qq"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    const-string v4, "com.tencent.tim"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    :cond_2
    move v3, v2

    move v0, v3

    return v0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x1

    move v2, v3

    move-object v3, v0

    invoke-static {v3}, Lcom/tencent/open/utils/k;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    const-string v4, "com.tencent.minihd.qq"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    const-string v4, "com.tencent.tim"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move v2, v3

    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    :cond_2
    move v3, v2

    move v0, v3

    return v0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final g(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)[B
    .locals 4

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
