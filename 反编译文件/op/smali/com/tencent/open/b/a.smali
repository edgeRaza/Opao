.class public Lcom/tencent/open/b/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/tencent/open/b/a;->d(Landroid/content/Context;)I

    move-result v3

    move v1, v3

    move v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "wifi"

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "cmwap"

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const-string v3, "cmnet"

    move-object v0, v3

    goto :goto_0

    :cond_2
    move v3, v1

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    const-string v3, "uniwap"

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v3, v1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    const-string v3, "uninet"

    move-object v0, v3

    goto :goto_0

    :cond_4
    move v3, v1

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    const-string v3, "wap"

    move-object v0, v3

    goto :goto_0

    :cond_5
    move v3, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    const-string v3, "net"

    move-object v0, v3

    goto :goto_0

    :cond_6
    move v3, v1

    const/16 v4, 0x200

    if-ne v3, v4, :cond_7

    const-string v3, "ctwap"

    move-object v0, v3

    goto :goto_0

    :cond_7
    move v3, v1

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    const-string v3, "ctnet"

    move-object v0, v3

    goto :goto_0

    :cond_8
    move v3, v1

    const/16 v4, 0x800

    if-ne v3, v4, :cond_9

    const-string v3, "3gnet"

    move-object v0, v3

    goto :goto_0

    :cond_9
    move v3, v1

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    const-string v3, "3gwap"

    move-object v0, v3

    goto :goto_0

    :cond_a
    move-object v3, v0

    invoke-static {v3}, Lcom/tencent/open/b/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_b

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    const-string v3, "none"

    move-object v0, v3

    goto :goto_0

    :cond_c
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v4, v1

    const-string v5, "apn"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    const-string v3, "openSDK_LOG.APNUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApn has exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v3, ""

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v3

    const-string v3, "openSDK_LOG.APNUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApn has exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/tencent/open/b/a;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v4, v1

    const-string v5, "proxy"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    const-string v3, "openSDK_LOG.APNUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApnProxy has exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 10

    move-object v0, p0

    move-object v6, v0

    :try_start_0
    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    move-object v1, v6

    move-object v6, v1

    if-nez v6, :cond_0

    const/16 v6, 0x80

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-nez v6, :cond_1

    const/16 v6, 0x80

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    move v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    const-string v7, "cmwap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0

    :cond_3
    move-object v6, v4

    const-string v7, "cmnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v4

    const-string v7, "epc.tmobile.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/4 v6, 0x4

    move v0, v6

    goto :goto_0

    :cond_5
    move-object v6, v4

    const-string v7, "uniwap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x10

    move v0, v6

    goto :goto_0

    :cond_6
    move-object v6, v4

    const-string v7, "uninet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    move v0, v6

    goto :goto_0

    :cond_7
    move-object v6, v4

    const-string v7, "wap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x40

    move v0, v6

    goto :goto_0

    :cond_8
    move-object v6, v4

    const-string v7, "net"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x20

    move v0, v6

    goto/16 :goto_0

    :cond_9
    move-object v6, v4

    const-string v7, "ctwap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x200

    move v0, v6

    goto/16 :goto_0

    :cond_a
    move-object v6, v4

    const-string v7, "ctnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x100

    move v0, v6

    goto/16 :goto_0

    :cond_b
    move-object v6, v4

    const-string v7, "3gwap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x400

    move v0, v6

    goto/16 :goto_0

    :cond_c
    move-object v6, v4

    const-string v7, "3gnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x800

    move v0, v6

    goto/16 :goto_0

    :cond_d
    move-object v6, v4

    const-string v7, "#777"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v6, v0

    invoke-static {v6}, Lcom/tencent/open/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_e

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_e

    const/16 v6, 0x200

    move v0, v6

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x100

    move v0, v6

    goto/16 :goto_0

    :cond_f
    :goto_1
    const/16 v6, 0x80

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    const-string v6, "openSDK_LOG.APNUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMProxyType has exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const-string v3, "MOBILE"

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_1
    const-string v3, "MOBILE"

    move-object v0, v3

    goto :goto_0
.end method
