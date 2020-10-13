.class public Lcom/tencent/open/utils/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/open/utils/d;->a:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    sget-object v8, Lcom/tencent/open/utils/d;->a:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v2, v6

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "DES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v6

    const-string v6, "DES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    const/4 v7, 0x1

    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v6, v7, v8, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    :catch_0
    move-exception v6

    move-object v2, v6

    const-string v6, "DESUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    move-object v2, v7

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    sget-object v9, Lcom/tencent/open/utils/d;->a:[B

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v3, v7

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "DES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v4, v7

    const-string v7, "DES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    const/4 v8, 0x2

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    move-object v7, v5

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    move-object v6, v7

    new-instance v7, Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    :goto_0
    return-object v0

    :catch_0
    move-exception v7

    move-object v2, v7

    const-string v7, "DESUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method
