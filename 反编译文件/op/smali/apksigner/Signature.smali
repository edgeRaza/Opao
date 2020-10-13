.class public Lapksigner/Signature;
.super Ljava/lang/Object;
.source "Signature.java"


# static fields
.field private static signature:Lapksigner/Signature;


# instance fields
.field afterAlgorithmIdBytes:[B

.field algorithmIdBytes:[B

.field beforeAlgorithmIdBytes:[B

.field cipher:Ljavax/crypto/Cipher;

.field md:Ljava/security/MessageDigest;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    new-instance v0, Lapksigner/Signature;

    invoke-direct {v0}, Lapksigner/Signature;-><init>()V

    sput-object v0, Lapksigner/Signature;->signature:Lapksigner/Signature;

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [B

    const/16 v1, 0x30

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x21

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iput-object v0, p0, Lapksigner/Signature;->beforeAlgorithmIdBytes:[B

    const/16 v0, 0xb

    new-array v0, v0, [B

    const/16 v1, 0x30

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x9

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    int-to-byte v1, v6

    aput-byte v1, v0, v7

    const/4 v1, 0x4

    const/16 v2, 0x2b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v1, 0x6

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    int-to-byte v2, v6

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iput-object v0, p0, Lapksigner/Signature;->algorithmIdBytes:[B

    new-array v0, v4, [B

    const/4 v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/16 v1, 0x14

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    iput-object v0, p0, Lapksigner/Signature;->afterAlgorithmIdBytes:[B

    return-void
.end method

.method public static getInstance()Lapksigner/Signature;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lapksigner/Signature;->signature:Lapksigner/Signature;

    return-object v0
.end method


# virtual methods
.method public initSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            ")V^",
            "Ljava/security/InvalidKeyException;",
            "^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lapksigner/Signature;->md:Ljava/security/MessageDigest;

    .line 55
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    .line 56
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    return-void
.end method

.method public sign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lapksigner/Signature;->beforeAlgorithmIdBytes:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 70
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lapksigner/Signature;->algorithmIdBytes:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 71
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lapksigner/Signature;->afterAlgorithmIdBytes:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 72
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lapksigner/Signature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 73
    iget-object v0, p0, Lapksigner/Signature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lapksigner/Signature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lapksigner/Signature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
