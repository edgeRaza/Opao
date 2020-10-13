.class public Lmao/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# static fields
.field public static final CHUNK_STRINGBLOCK:I = 0x1c0001

.field public static final IS_UTF8:I = 0x100

.field private static final UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF16LE_ENCODER:Ljava/nio/charset/CharsetEncoder;

.field private static final UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

.field private static final UTF8_ENCODER:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private chunkSize:I

.field private flags:I

.field private m_isUTF8:Z

.field private m_stringOffsets:[I

.field m_strings:[B

.field private m_styleOffsets:[I

.field private m_styles:[I

.field private stringsOffset:I

.field private styleOffsetCount:I

.field private stylesOffset:I


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lmao/res/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lmao/res/StringBlock;->UTF16LE_ENCODER:Ljava/nio/charset/CharsetEncoder;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lmao/res/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lmao/res/StringBlock;->UTF8_ENCODER:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    :try_start_0
    iget-boolean v0, p0, Lmao/res/StringBlock;->m_isUTF8:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmao/res/StringBlock;->UTF8_DECODER:Ljava/nio/charset/CharsetDecoder;

    :goto_0
    iget-object v1, p0, Lmao/res/StringBlock;->m_strings:[B

    invoke-static {v1, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_1
    return-object v0

    .line 324
    :cond_0
    sget-object v0, Lmao/res/StringBlock;->UTF16LE_DECODER:Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 327
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method private static final getShort([BI)I
    .locals 2

    .prologue
    .line 332
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getStyle(I)[I
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 297
    iget-object v1, p0, Lmao/res/StringBlock;->m_styleOffsets:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmao/res/StringBlock;->m_styles:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmao/res/StringBlock;->m_styleOffsets:[I

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 299
    :cond_0
    check-cast v0, [I

    .line 319
    :goto_0
    return-object v0

    .line 301
    :cond_1
    iget-object v1, p0, Lmao/res/StringBlock;->m_styleOffsets:[I

    aget v1, v1, p1

    div-int/lit8 v2, v1, 0x4

    move v1, v2

    move v3, v4

    .line 305
    :goto_1
    iget-object v5, p0, Lmao/res/StringBlock;->m_styles:[I

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lmao/res/StringBlock;->m_styles:[I

    aget v5, v5, v1

    if-ne v5, v6, :cond_4

    .line 309
    :cond_2
    if-eqz v3, :cond_3

    rem-int/lit8 v1, v3, 0x3

    if-eqz v1, :cond_5

    .line 310
    :cond_3
    check-cast v0, [I

    goto :goto_0

    .line 307
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_5
    new-array v3, v3, [I

    .line 317
    :goto_2
    iget-object v0, p0, Lmao/res/StringBlock;->m_styles:[I

    array-length v0, v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lmao/res/StringBlock;->m_styles:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_7

    :cond_6
    move-object v0, v3

    .line 319
    goto :goto_0

    .line 317
    :cond_7
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lmao/res/StringBlock;->m_styles:[I

    add-int/lit8 v1, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v4

    move v4, v0

    move v2, v1

    goto :goto_2
.end method

.method private static final getVarint([BI)[I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 337
    aget-byte v3, p0, p1

    .line 338
    and-int/lit16 v0, v3, 0x80

    if-nez v0, :cond_0

    move v0, v1

    .line 339
    :goto_0
    and-int/lit8 v3, v3, 0x7f

    .line 341
    if-nez v0, :cond_1

    .line 342
    new-array v0, v5, [I

    aput v3, v0, v1

    aput v2, v0, v2

    .line 344
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 338
    goto :goto_0

    .line 344
    :cond_1
    new-array v0, v5, [I

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v0, v1

    aput v5, v0, v2

    goto :goto_1
.end method

.method private outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x3b

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 262
    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    if-eqz p3, :cond_0

    .line 264
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 268
    if-ne v0, v5, :cond_2

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 271
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    if-nez p3, :cond_1

    .line 273
    const/4 v1, 0x1

    .line 274
    :goto_0
    if-eqz v1, :cond_1

    .line 275
    const/16 v3, 0x3d

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 276
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 279
    if-eq v3, v5, :cond_3

    .line 281
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v3

    goto :goto_0

    .line 284
    :cond_3
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_1
.end method

.method public static read(Lmao/util/LEDataInputStream;)Lmao/res/StringBlock;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const v0, 0x1c0001

    invoke-virtual {p0, v0}, Lmao/util/LEDataInputStream;->skipCheckInt(I)V

    .line 47
    new-instance v3, Lmao/res/StringBlock;

    invoke-direct {v3}, Lmao/res/StringBlock;-><init>()V

    .line 49
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v1

    iput v1, v3, Lmao/res/StringBlock;->chunkSize:I

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "chunkSize "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v4

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "stringCount "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v5

    iput v5, v3, Lmao/res/StringBlock;->styleOffsetCount:I

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "styleOffsetCount "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v0

    iput v0, v3, Lmao/res/StringBlock;->flags:I

    .line 60
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v6

    iput v6, v3, Lmao/res/StringBlock;->stringsOffset:I

    .line 61
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "stringsOffset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v2

    iput v2, v3, Lmao/res/StringBlock;->stylesOffset:I

    .line 64
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "stylesOffset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v3, Lmao/res/StringBlock;->m_isUTF8:Z

    .line 67
    invoke-virtual {p0, v4}, Lmao/util/LEDataInputStream;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v3, Lmao/res/StringBlock;->m_stringOffsets:[I

    .line 68
    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {p0, v5}, Lmao/util/LEDataInputStream;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v3, Lmao/res/StringBlock;->m_styleOffsets:[I

    .line 72
    :cond_0
    if-nez v2, :cond_2

    move v0, v1

    :goto_1
    sub-int/2addr v0, v6

    .line 73
    rem-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_3

    .line 74
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "String data size is not multiple of 4 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 72
    goto :goto_1

    .line 76
    :cond_3
    new-array v0, v0, [B

    iput-object v0, v3, Lmao/res/StringBlock;->m_strings:[B

    .line 77
    iget-object v0, v3, Lmao/res/StringBlock;->m_strings:[B

    invoke-virtual {p0, v0}, Lmao/util/LEDataInputStream;->readFully([B)V

    .line 81
    if-eqz v2, :cond_5

    .line 82
    sub-int v0, v1, v2

    .line 83
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 84
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Style data size is not multiple of 4 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_4
    div-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Lmao/util/LEDataInputStream;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, v3, Lmao/res/StringBlock;->m_styles:[I

    .line 87
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "m_styles_size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 91
    return-object v3
.end method


# virtual methods
.method public getChunkSize()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lmao/res/StringBlock;->chunkSize:I

    return v0
.end method

.method public getHTML(I)Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 207
    invoke-virtual {p0, p1}, Lmao/res/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    if-nez v6, :cond_0

    move-object v0, v6

    .line 256
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lmao/res/StringBlock;->getStyle(I)[I

    move-result-object v7

    .line 212
    if-nez v7, :cond_1

    move-object v0, v6

    .line 213
    goto :goto_0

    .line 215
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 216
    array-length v0, v7

    div-int/lit8 v0, v0, 0x3

    new-array v9, v0, [I

    move v0, v1

    move v2, v1

    :goto_1
    move v3, v1

    move v4, v5

    .line 221
    :goto_2
    array-length v10, v7

    if-ne v3, v10, :cond_3

    .line 229
    if-eq v4, v5, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget v3, v7, v3

    .line 230
    :goto_3
    add-int/lit8 v0, v0, -0x1

    move v13, v0

    move v0, v2

    move v2, v13

    :goto_4
    if-gez v2, :cond_8

    .line 243
    :cond_2
    add-int/lit8 v10, v2, 0x1

    .line 244
    if-ge v0, v3, :cond_b

    .line 245
    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    .line 249
    :goto_5
    if-ne v4, v5, :cond_a

    .line 256
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_3
    add-int/lit8 v10, v3, 0x1

    aget v10, v7, v10

    if-ne v10, v5, :cond_5

    .line 221
    :cond_4
    :goto_6
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 225
    :cond_5
    if-eq v4, v5, :cond_6

    add-int/lit8 v10, v4, 0x1

    aget v10, v7, v10

    add-int/lit8 v11, v3, 0x1

    aget v11, v7, v11

    if-le v10, v11, :cond_4

    :cond_6
    move v4, v3

    .line 226
    goto :goto_6

    .line 229
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_3

    .line 231
    :cond_8
    aget v10, v9, v2

    .line 232
    add-int/lit8 v11, v10, 0x2

    aget v11, v7, v11

    .line 233
    if-ge v11, v3, :cond_2

    .line 236
    if-gt v0, v11, :cond_9

    .line 237
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v11, 0x1

    .line 241
    :cond_9
    aget v10, v7, v10

    invoke-virtual {p0, v10}, Lmao/res/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v8, v11}, Lmao/res/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 230
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 252
    :cond_a
    aget v0, v7, v4

    invoke-virtual {p0, v0}, Lmao/res/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v8, v1}, Lmao/res/StringBlock;->outputStyleTag(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 253
    add-int/lit8 v0, v4, 0x1

    aput v5, v7, v0

    .line 254
    add-int/lit8 v0, v10, 0x1

    aput v4, v9, v10

    goto :goto_1

    :cond_b
    move v2, v0

    goto :goto_5
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lmao/res/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmao/res/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 181
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmao/res/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmao/res/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    .line 185
    :cond_1
    iget-object v0, p0, Lmao/res/StringBlock;->m_stringOffsets:[I

    aget v1, v0, p1

    .line 186
    iget-boolean v0, p0, Lmao/res/StringBlock;->m_isUTF8:Z

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lmao/res/StringBlock;->m_strings:[B

    invoke-static {v0, v1}, Lmao/res/StringBlock;->getShort([BI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 189
    add-int/lit8 v1, v1, 0x2

    .line 196
    :goto_1
    invoke-direct {p0, v1, v0}, Lmao/res/StringBlock;->decodeString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lmao/res/StringBlock;->m_strings:[B

    invoke-static {v0, v1}, Lmao/res/StringBlock;->getVarint([BI)[I

    move-result-object v0

    aget v0, v0, v3

    add-int/2addr v0, v1

    .line 192
    iget-object v1, p0, Lmao/res/StringBlock;->m_strings:[B

    invoke-static {v1, v0}, Lmao/res/StringBlock;->getVarint([BI)[I

    move-result-object v2

    .line 193
    aget v1, v2, v3

    add-int/2addr v1, v0

    .line 194
    const/4 v0, 0x0

    aget v0, v2, v0

    goto :goto_1
.end method

.method public getStrings(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lmao/res/StringBlock;->getSize()I

    move-result v1

    .line 96
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lmao/res/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmao/util/Utf8Utils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmao/util/LEDataOutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v5, Lmao/util/LEDataOutputStream;

    invoke-direct {v5, v4}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 117
    new-array v7, v6, [I

    .line 121
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    new-instance v9, Lmao/util/LEDataOutputStream;

    invoke-direct {v9, v8}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move v2, v1

    move v3, v1

    .line 123
    :goto_0
    if-lt v2, v6, :cond_3

    .line 133
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 134
    rem-int/lit8 v3, v2, 0x4

    .line 136
    if-eqz v3, :cond_0

    move v0, v1

    .line 137
    :goto_1
    rsub-int/lit8 v9, v3, 0x4

    if-lt v0, v9, :cond_4

    .line 140
    rsub-int/lit8 v0, v3, 0x4

    add-int/2addr v0, v2

    .line 142
    :cond_0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 146
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "string chunk size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lmao/res/StringBlock;->chunkSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5, v6}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 149
    iget v1, p0, Lmao/res/StringBlock;->styleOffsetCount:I

    invoke-virtual {v5, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 150
    iget v1, p0, Lmao/res/StringBlock;->flags:I

    invoke-virtual {v5, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 152
    iget v1, p0, Lmao/res/StringBlock;->stringsOffset:I

    invoke-virtual {v5, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 153
    iget v1, p0, Lmao/res/StringBlock;->stylesOffset:I

    invoke-virtual {v5, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 155
    invoke-virtual {v5, v7}, Lmao/util/LEDataOutputStream;->writeIntArray([I)V

    .line 156
    iget v1, p0, Lmao/res/StringBlock;->styleOffsetCount:I

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "write stylesOffset"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lmao/res/StringBlock;->m_styleOffsets:[I

    invoke-virtual {v5, v1}, Lmao/util/LEDataOutputStream;->writeIntArray([I)V

    .line 161
    :cond_1
    invoke-virtual {v5, v0}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    .line 163
    iget-object v0, p0, Lmao/res/StringBlock;->m_styles:[I

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "write m_styles"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lmao/res/StringBlock;->m_styles:[I

    invoke-virtual {v5, v0}, Lmao/util/LEDataOutputStream;->writeIntArray([I)V

    .line 167
    :cond_2
    const v0, 0x1c0001

    invoke-virtual {p2, v0}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 170
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 171
    invoke-virtual {p2, v0}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    return-void

    .line 124
    :cond_3
    aput v3, v7, v2

    .line 125
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmao/util/Utf8Utils;->escapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 127
    array-length v10, v0

    int-to-short v10, v10

    invoke-virtual {v9, v10}, Lmao/util/LEDataOutputStream;->writeShort(S)V

    .line 128
    invoke-virtual {v9, v0}, Lmao/util/LEDataOutputStream;->writeCharArray([C)V

    .line 129
    invoke-virtual {v9, v1}, Lmao/util/LEDataOutputStream;->writeShort(S)V

    .line 130
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 138
    :cond_4
    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public write(Lmao/util/LEDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmao/util/LEDataOutputStream;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmao/res/StringBlock;->getSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-virtual {p0, v0}, Lmao/res/StringBlock;->getStrings(Ljava/util/List;)V

    .line 104
    invoke-virtual {p0, v0, p1}, Lmao/res/StringBlock;->write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V

    return-void
.end method
