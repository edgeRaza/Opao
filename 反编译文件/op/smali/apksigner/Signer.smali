.class public Lapksigner/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# static fields
.field private static final CERT_RSA_NAME:Ljava/lang/String; = "META-INF/CERT.RSA"

.field private static final CERT_SF_NAME:Ljava/lang/String; = "META-INF/CERT.SF"

.field public static final DEFAULT_KEYS:[Ljava/lang/String;

.field static privateKey:Ljava/security/PrivateKey;

.field static publicKey:Ljava/security/cert/X509Certificate;

.field private static res:Lapksigner/Signer;

.field static sigBlockTemp:[B

.field private static stripPattern:Ljava/util/regex/Pattern;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v0, "^META-INF/(.*)[.](SF|RSA|DSA)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->stripPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "platform"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "testkey"

    aput-object v2, v0, v1

    sput-object v0, Lapksigner/Signer;->DEFAULT_KEYS:[Ljava/lang/String;

    new-instance v0, Lapksigner/Signer;

    invoke-direct {v0}, Lapksigner/Signer;-><init>()V

    sput-object v0, Lapksigner/Signer;->res:Lapksigner/Signer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lapksigner/Signer;->loadKeys(Ljava/lang/String;)V

    return-void
.end method

.method private static addDigestsToManifest(Ljava/util/Map;)Ljava/util/jar/Manifest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lapksigner/io/ZioEntry;",
            ">;)",
            "Ljava/util/jar/Manifest;",
            "^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 161
    check-cast v0, Ljava/util/jar/Manifest;

    .line 162
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapksigner/io/ZioEntry;

    .line 163
    if-eqz v2, :cond_7

    .line 165
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0}, Ljava/util/jar/Manifest;-><init>()V

    .line 166
    invoke-virtual {v2}, Lapksigner/io/ZioEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 168
    :goto_0
    new-instance v3, Ljava/util/jar/Manifest;

    invoke-direct {v3}, Ljava/util/jar/Manifest;-><init>()V

    .line 169
    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    .line 170
    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 180
    :goto_1
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 181
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 182
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 189
    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 191
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 214
    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    return-object v3

    .line 176
    :cond_1
    const-string v4, "Manifest-Version"

    const-string v5, "1.0"

    invoke-virtual {v0, v4, v5}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    const-string v4, "Created-By"

    const-string v5, "1.0 (Android SignApk)"

    invoke-virtual {v0, v4, v5}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;

    .line 193
    invoke-virtual {v0}, Lapksigner/io/ZioEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 194
    invoke-virtual {v0}, Lapksigner/io/ZioEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "META-INF/CERT.SF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "META-INF/CERT.RSA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lapksigner/Signer;->stripPattern:Ljava/util/regex/Pattern;

    if-eqz v8, :cond_3

    sget-object v8, Lapksigner/Signer;->stripPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_0

    .line 200
    :cond_3
    invoke-virtual {v0}, Lapksigner/io/ZioEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 201
    :goto_3
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_6

    move-object v0, v1

    .line 206
    check-cast v0, Ljava/util/jar/Attributes;

    .line 207
    if-eqz v2, :cond_4

    .line 209
    invoke-virtual {v2, v7}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v8

    .line 210
    if-eqz v8, :cond_4

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0, v8}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    .line 212
    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    .line 213
    :cond_5
    const-string v8, "SHA1-Digest"

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, Lapksigner/Base64;->encode([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    invoke-virtual {v3}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 203
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private static copyFiles(Ljava/util/jar/Manifest;Ljava/util/Map;Lapksigner/io/ZipOutput;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lapksigner/io/ZioEntry;",
            ">;",
            "Lapksigner/io/ZipOutput;",
            "J)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 318
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 319
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;

    .line 322
    invoke-virtual {v0, p3, p4}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 323
    invoke-virtual {p2, v0}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    goto :goto_0
.end method

.method private static decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 95
    check-cast v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    .line 98
    :try_start_0
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 107
    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 109
    const/4 v3, 0x2

    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 112
    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 102
    check-cast v1, Ljava/security/spec/KeySpec;

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 116
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "PrivateKey may be bad."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    throw v0
.end method

.method private static generateSignatureFile(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Manifest;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v0, "Signature-Version: 1.0\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 234
    const-string v0, "Created-By: 1.0 (Android SignApk)\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 238
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 239
    new-instance v3, Ljava/io/PrintStream;

    new-instance v0, Ljava/security/DigestOutputStream;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    const/4 v1, 0x1

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v1, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 244
    invoke-virtual {p0, v3}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 245
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SHA1-Digest-Manifest: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lapksigner/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 249
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 250
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 263
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Name: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 257
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 263
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "SHA1-Digest: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lapksigner/Base64;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 255
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static readBytes(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 150
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 151
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    :goto_0
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static readPrivateKey(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0}, Lapksigner/Signer;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 127
    const-string v0, ""

    invoke-static {v1, v0}, Lapksigner/Signer;->decryptPrivateKey([BLjava/lang/String;)Ljava/security/spec/KeySpec;

    move-result-object v0

    .line 128
    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 134
    :goto_0
    :try_start_1
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static readPublicKey(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 89
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-object v0, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lapksigner/Signer;->res:Lapksigner/Signer;

    const-string v2, "testkey"

    invoke-virtual {v0, v2}, Lapksigner/Signer;->loadKeys(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 332
    check-cast v0, Lapksigner/io/ZipInput;

    .line 333
    check-cast v1, Lapksigner/io/ZipOutput;

    .line 336
    :try_start_0
    invoke-static {p0}, Lapksigner/io/ZipInput;->read(Ljava/lang/String;)Lapksigner/io/ZipInput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 338
    :try_start_1
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 339
    new-instance v2, Lapksigner/io/ZipOutput;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lapksigner/io/ZipOutput;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 342
    :try_start_2
    sget-object v1, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    .line 346
    invoke-static {v0}, Lapksigner/Signer;->addDigestsToManifest(Ljava/util/Map;)Ljava/util/jar/Manifest;

    move-result-object v1

    .line 347
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/MANIFEST.MF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 349
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 350
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 355
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/CERT.SF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 359
    invoke-static {}, Lapksigner/Signature;->getInstance()Lapksigner/Signature;

    move-result-object v7

    .line 360
    sget-object v8, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v7, v8}, Lapksigner/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 363
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    invoke-static {v1, v8}, Lapksigner/Signer;->generateSignatureFile(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 365
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 366
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 367
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 368
    invoke-virtual {v7, v8}, Lapksigner/Signature;->update([B)V

    .line 371
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v8, "META-INF/CERT.RSA"

    invoke-direct {v6, v8}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 373
    sget-object v8, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lapksigner/Signer;->writeSignatureBlock(Lapksigner/Signature;Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    .line 374
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 377
    invoke-static {v1, v0, v2, v4, v5}, Lapksigner/Signer;->copyFiles(Ljava/util/jar/Manifest;Ljava/util/Map;Lapksigner/io/ZipOutput;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 388
    :goto_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->close()V

    .line 389
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lapksigner/io/ZipOutput;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    return-void

    .line 377
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 381
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    .line 388
    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->close()V

    .line 389
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lapksigner/io/ZipOutput;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_4
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_4

    .line 381
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 377
    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    sget-object v0, Lapksigner/Signer;->res:Lapksigner/Signer;

    invoke-virtual {v0, p2}, Lapksigner/Signer;->loadKeys(Ljava/lang/String;)V

    move-object v0, v1

    .line 400
    check-cast v0, Lapksigner/io/ZipInput;

    .line 401
    check-cast v1, Lapksigner/io/ZipOutput;

    .line 404
    :try_start_0
    invoke-static {p0}, Lapksigner/io/ZipInput;->read(Ljava/lang/String;)Lapksigner/io/ZipInput;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 406
    :try_start_1
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->getEntries()Ljava/util/Map;

    move-result-object v0

    .line 407
    new-instance v2, Lapksigner/io/ZipOutput;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lapksigner/io/ZipOutput;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    :try_start_2
    sget-object v1, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    .line 414
    invoke-static {v0}, Lapksigner/Signer;->addDigestsToManifest(Ljava/util/Map;)Ljava/util/jar/Manifest;

    move-result-object v1

    .line 415
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/MANIFEST.MF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 417
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 418
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 423
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/CERT.SF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 427
    invoke-static {}, Lapksigner/Signature;->getInstance()Lapksigner/Signature;

    move-result-object v7

    .line 428
    sget-object v8, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v7, v8}, Lapksigner/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 431
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 432
    invoke-static {v1, v8}, Lapksigner/Signer;->generateSignatureFile(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 433
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 434
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 435
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 436
    invoke-virtual {v7, v8}, Lapksigner/Signature;->update([B)V

    .line 439
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v8, "META-INF/CERT.RSA"

    invoke-direct {v6, v8}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v6, v4, v5}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 441
    sget-object v8, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lapksigner/Signer;->writeSignatureBlock(Lapksigner/Signature;Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    .line 442
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 445
    invoke-static {v1, v0, v2, v4, v5}, Lapksigner/Signer;->copyFiles(Ljava/util/jar/Manifest;Ljava/util/Map;Lapksigner/io/ZipOutput;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 456
    :goto_0
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->close()V

    .line 457
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lapksigner/io/ZipOutput;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    .line 445
    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 449
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v3, v2

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    move-object v2, v1

    .line 456
    :goto_3
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Lapksigner/io/ZipInput;->close()V

    .line 457
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lapksigner/io/ZipOutput;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_4

    .line 449
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_3

    .line 445
    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 466
    sget-object v0, Lapksigner/Signer;->res:Lapksigner/Signer;

    const-string v2, "testkey"

    invoke-virtual {v0, v2}, Lapksigner/Signer;->loadKeys(Ljava/lang/String;)V

    move-object v0, v1

    .line 468
    check-cast v0, Lapksigner/io/ZipInput;

    .line 469
    check-cast v1, Lapksigner/io/ZipOutput;

    .line 471
    invoke-static {p0}, Lapksigner/io/ZipInput;->read(Ljava/lang/String;)Lapksigner/io/ZipInput;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->getEntries()Ljava/util/Map;

    move-result-object v1

    .line 474
    new-instance v2, Lapksigner/io/ZipOutput;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lapksigner/io/ZipOutput;-><init>(Ljava/io/OutputStream;)V

    .line 477
    sget-object v3, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    .line 481
    invoke-static {v1}, Lapksigner/Signer;->addDigestsToManifest(Ljava/util/Map;)Ljava/util/jar/Manifest;

    move-result-object v5

    .line 482
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/MANIFEST.MF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v6, v3, v4}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 484
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 485
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 490
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v7, "META-INF/CERT.SF"

    invoke-direct {v6, v7}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v6, v3, v4}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 494
    invoke-static {}, Lapksigner/Signature;->getInstance()Lapksigner/Signature;

    move-result-object v7

    .line 495
    sget-object v8, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v7, v8}, Lapksigner/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 498
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 499
    invoke-static {v5, v8}, Lapksigner/Signer;->generateSignatureFile(Ljava/util/jar/Manifest;Ljava/io/OutputStream;)V

    .line 500
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 501
    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    .line 502
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 503
    invoke-virtual {v7, v8}, Lapksigner/Signature;->update([B)V

    .line 506
    new-instance v6, Lapksigner/io/ZioEntry;

    const-string v8, "META-INF/CERT.RSA"

    invoke-direct {v6, v8}, Lapksigner/io/ZioEntry;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v6, v3, v4}, Lapksigner/io/ZioEntry;->setTime(J)V

    .line 508
    sget-object v8, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Lapksigner/io/ZioEntry;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lapksigner/Signer;->writeSignatureBlock(Lapksigner/Signature;Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    .line 509
    invoke-virtual {v2, v6}, Lapksigner/io/ZipOutput;->write(Lapksigner/io/ZioEntry;)V

    .line 512
    invoke-static {v5, v1, v2, v3, v4}, Lapksigner/Signer;->copyFiles(Ljava/util/jar/Manifest;Ljava/util/Map;Lapksigner/io/ZipOutput;J)V

    .line 514
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->close()V

    .line 515
    invoke-virtual {v2}, Lapksigner/io/ZipOutput;->close()V

    return-void
.end method

.method private static writeSignatureBlock(Lapksigner/Signature;Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapksigner/Signature;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/io/OutputStream;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;",
            "^",
            "Ljava/lang/Exception;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lapksigner/Signer;->sigBlockTemp:[B

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 308
    invoke-virtual {p0}, Lapksigner/Signature;->sign()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public loadKeys(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lapksigner/Signer;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/assets/keys/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".pk8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lapksigner/Signer;->readPrivateKey(Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    .line 279
    invoke-virtual {p0}, Lapksigner/Signer;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/assets/keys/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".x509.pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lapksigner/Signer;->readPublicKey(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    .line 283
    invoke-virtual {p0}, Lapksigner/Signer;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "/assets/keys/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".sbt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lapksigner/Signer;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->sigBlockTemp:[B

    return-void
.end method

.method public loadKeys(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;",
            "^",
            "Ljava/security/GeneralSecurityException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".pk8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lapksigner/Signer;->readPrivateKey(Ljava/io/InputStream;)Ljava/security/PrivateKey;

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->privateKey:Ljava/security/PrivateKey;

    .line 296
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".x509.pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lapksigner/Signer;->readPublicKey(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->publicKey:Ljava/security/cert/X509Certificate;

    .line 300
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".sbt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lapksigner/Signer;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    sput-object v0, Lapksigner/Signer;->sigBlockTemp:[B

    return-void
.end method
