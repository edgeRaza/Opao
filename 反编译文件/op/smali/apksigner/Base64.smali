.class public Lapksigner/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[C

.field private static valueDecoding:[I


# direct methods
.method static final constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lapksigner/Base64;->ALPHABET:[C

    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lapksigner/Base64;->valueDecoding:[I

    move v0, v1

    .line 26
    :goto_0
    sget-object v2, Lapksigner/Base64;->valueDecoding:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 30
    :goto_1
    sget-object v0, Lapksigner/Base64;->ALPHABET:[C

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    .line 27
    :cond_0
    sget-object v2, Lapksigner/Base64;->valueDecoding:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    sget-object v2, Lapksigner/Base64;->ALPHABET:[C

    aget-char v2, v2, v1

    aput v1, v0, v2

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4294967295
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lapksigner/Base64;->decode(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;II)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3d

    const/4 v5, 0x0

    .line 92
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 string length is not multiple of 4"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 104
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 105
    add-int/lit8 v0, v0, -0x1

    .line 106
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 107
    add-int/lit8 v0, v0, -0x1

    .line 111
    :cond_1
    new-array v4, v0, [B

    move v6, v5

    .line 112
    :goto_0
    if-lt v6, p2, :cond_2

    .line 120
    return-object v4

    .line 113
    :cond_2
    add-int v0, p1, v6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int v1, p1, v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int v2, p1, v6

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p1, v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static/range {v0 .. v5}, Lapksigner/Base64;->decodeQuantum(CCCC[BI)V

    .line 112
    add-int/lit8 v0, v6, 0x4

    add-int/lit8 v5, v5, 0x3

    move v6, v0

    goto :goto_0
.end method

.method private static decodeQuantum(CCCC[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCCC[BI)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 129
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    and-int/lit8 v3, p0, 0x7f

    aget v5, v0, v3

    .line 130
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    and-int/lit8 v3, p1, 0x7f

    aget v6, v0, v3

    .line 132
    if-ne p3, v7, :cond_2

    .line 134
    if-ne p2, v7, :cond_1

    move v0, v1

    move v3, v4

    .line 144
    :goto_0
    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    if-ltz v3, :cond_0

    if-gez v4, :cond_3

    .line 145
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    and-int/lit8 v3, p2, 0x7f

    aget v0, v0, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 140
    :cond_2
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    and-int/lit8 v3, p2, 0x7f

    aget v3, v0, v3

    .line 141
    sget-object v0, Lapksigner/Base64;->valueDecoding:[I

    and-int/lit8 v7, p3, 0x7f

    aget v0, v0, v7

    move v8, v4

    move v4, v0

    move v0, v8

    goto :goto_0

    .line 149
    :cond_3
    shl-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xfc

    ushr-int/lit8 v7, v6, 0x4

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, p4, p5

    .line 151
    if-ge v0, v1, :cond_4

    .line 153
    add-int/lit8 v1, p5, 0x1

    shl-int/lit8 v5, v6, 0x4

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, v1

    .line 155
    if-ge v0, v2, :cond_4

    .line 157
    add-int/lit8 v0, p5, 0x2

    shl-int/lit8 v1, v3, 0x6

    and-int/lit16 v1, v1, 0xc0

    and-int/lit8 v2, v4, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    :cond_4
    return-void
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lapksigner/Base64;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    add-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 42
    new-array v2, v1, [C

    move v1, v0

    .line 45
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 46
    :cond_0
    add-int v3, p1, v1

    sub-int v4, p2, v1

    invoke-static {p0, v3, v4, v2, v0}, Lapksigner/Base64;->encodeQuantum([BII[CI)V

    .line 45
    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private static encodeQuantum([BII[CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII[CI)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 57
    int-to-byte v0, v1

    int-to-byte v0, v1

    int-to-byte v1, v1

    .line 59
    aget-byte v2, p0, p1

    .line 60
    sget-object v3, Lapksigner/Base64;->ALPHABET:[C

    ushr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-char v3, v3, v4

    aput-char v3, p3, p4

    .line 62
    const/4 v3, 0x2

    if-le p2, v3, :cond_0

    .line 63
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .line 64
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    .line 65
    add-int/lit8 v3, p4, 0x1

    sget-object v4, Lapksigner/Base64;->ALPHABET:[C

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v2, v5

    aget-char v2, v4, v2

    aput-char v2, p3, v3

    .line 67
    add-int/lit8 v2, p4, 0x2

    sget-object v3, Lapksigner/Base64;->ALPHABET:[C

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3c

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    aget-char v0, v3, v0

    aput-char v0, p3, v2

    .line 69
    add-int/lit8 v0, p4, 0x3

    sget-object v2, Lapksigner/Base64;->ALPHABET:[C

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v2, v1

    aput-char v1, p3, v0

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 71
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .line 72
    add-int/lit8 v3, p4, 0x1

    sget-object v4, Lapksigner/Base64;->ALPHABET:[C

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v2, v5

    aget-char v2, v4, v2

    aput-char v2, p3, v3

    .line 74
    add-int/lit8 v2, p4, 0x2

    sget-object v3, Lapksigner/Base64;->ALPHABET:[C

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3c

    ushr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    aget-char v0, v3, v0

    aput-char v0, p3, v2

    .line 76
    add-int/lit8 v0, p4, 0x3

    aput-char v6, p3, v0

    goto :goto_0

    .line 78
    :cond_1
    add-int/lit8 v1, p4, 0x1

    sget-object v3, Lapksigner/Base64;->ALPHABET:[C

    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v0, v2

    aget-char v0, v3, v0

    aput-char v0, p3, v1

    .line 80
    add-int/lit8 v0, p4, 0x2

    aput-char v6, p3, v0

    .line 81
    add-int/lit8 v0, p4, 0x3

    aput-char v6, p3, v0

    goto :goto_0
.end method
