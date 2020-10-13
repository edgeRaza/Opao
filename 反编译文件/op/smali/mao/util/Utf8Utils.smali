.class public final Lmao/util/Utf8Utils;
.super Ljava/lang/Object;
.source "Utf8Utils.java"


# static fields
.field private static tempBuffer:[C


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [C

    sput-object v0, Lmao/util/Utf8Utils;->tempBuffer:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digit(C)I
    .locals 3

    .prologue
    .line 331
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 332
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal not hex character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    return v0
.end method

.method public static escapeSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5c

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 289
    if-ne v3, v5, :cond_3

    .line 290
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_1

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "escape Sequence error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 293
    sparse-switch v3, :sswitch_data_0

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "escape Sequence error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :sswitch_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :sswitch_1
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 299
    :sswitch_2
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :sswitch_3
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    :sswitch_4
    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 305
    :sswitch_5
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 307
    :sswitch_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :sswitch_7
    add-int/lit8 v0, v0, 0x1

    .line 310
    add-int/lit8 v3, v1, -0x4

    if-le v0, v3, :cond_2

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unicode error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmao/util/Utf8Utils;->digit(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmao/util/Utf8Utils;->digit(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v0

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmao/util/Utf8Utils;->digit(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmao/util/Utf8Utils;->digit(C)I

    move-result v4

    or-int/2addr v3, v4

    .line 317
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 293
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_4
        0x5c -> :sswitch_6
        0x62 -> :sswitch_0
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_1
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x7f

    const/16 v5, 0x5c

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 248
    const/16 v4, 0x20

    if-lt v3, v4, :cond_3

    if-ge v3, v6, :cond_3

    .line 249
    const/16 v4, 0x27

    if-eq v3, v4, :cond_1

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_2

    .line 250
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_3
    if-gt v3, v6, :cond_4

    .line 255
    packed-switch v3, :pswitch_data_0

    .line 278
    :cond_4
    :pswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 256
    :pswitch_1
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 257
    :pswitch_2
    const-string v3, "\\r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :pswitch_3
    const-string v3, "\\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 46
    mul-int/lit8 v0, v3, 0x3

    new-array v4, v0, [B

    move v1, v2

    move v0, v2

    .line 49
    :goto_0
    if-lt v1, v3, :cond_0

    .line 66
    new-array v1, v0, [B

    .line 67
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-object v1

    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 51
    if-eqz v5, :cond_1

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 52
    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 49
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/16 v6, 0x800

    if-ge v5, v6, :cond_2

    .line 55
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 56
    add-int/lit8 v6, v0, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 57
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 59
    :cond_2
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 60
    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 61
    add-int/lit8 v6, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 62
    add-int/lit8 v0, v0, 0x3

    goto :goto_1
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad utf-8 byte "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static utf8BytesToString([BII)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x80

    .line 84
    sget-object v0, Lmao/util/Utf8Utils;->tempBuffer:[C

    if-eqz v0, :cond_0

    sget-object v0, Lmao/util/Utf8Utils;->tempBuffer:[C

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 85
    :cond_0
    new-array v0, p2, [C

    sput-object v0, Lmao/util/Utf8Utils;->tempBuffer:[C

    .line 87
    :cond_1
    sget-object v5, Lmao/util/Utf8Utils;->tempBuffer:[C

    move v3, v4

    .line 161
    :goto_0
    if-gtz p2, :cond_2

    .line 164
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    :goto_1
    return-object v0

    .line 91
    :cond_2
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 92
    shr-int/lit8 v1, v0, 0x4

    packed-switch v1, :pswitch_data_0

    .line 157
    :pswitch_0
    invoke-static {v0, p1}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 97
    :pswitch_1
    add-int/lit8 v2, p2, -0x1

    .line 98
    if-nez v0, :cond_3

    .line 100
    invoke-static {v0, p1}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_3
    int-to-char v0, v0

    .line 103
    add-int/lit8 v1, p1, 0x1

    .line 160
    :goto_2
    aput-char v0, v5, v3

    .line 161
    add-int/lit8 v0, v3, 0x1

    move p1, v1

    move v3, v0

    move p2, v2

    goto :goto_0

    .line 108
    :pswitch_2
    add-int/lit8 v2, p2, -0x2

    .line 109
    if-gez v2, :cond_4

    .line 110
    invoke-static {v0, p1}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_4
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 113
    and-int/lit16 v6, v1, 0xc0

    if-eq v6, v8, :cond_5

    .line 114
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 116
    :cond_5
    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v1, 0x3f

    or-int/2addr v0, v6

    .line 117
    if-eqz v0, :cond_6

    if-ge v0, v8, :cond_6

    .line 122
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 124
    :cond_6
    int-to-char v0, v0

    .line 125
    add-int/lit8 v1, p1, 0x2

    .line 126
    goto :goto_2

    .line 130
    :pswitch_3
    add-int/lit8 v2, p2, -0x3

    .line 131
    if-gez v2, :cond_7

    .line 132
    invoke-static {v0, p1}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 134
    :cond_7
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 135
    and-int/lit16 v6, v1, 0xc0

    if-eq v6, v8, :cond_8

    .line 136
    add-int/lit8 v0, p1, 0x1

    invoke-static {v1, v0}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 138
    :cond_8
    add-int/lit8 v6, p1, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 139
    and-int/lit16 v7, v1, 0xc0

    if-eq v7, v8, :cond_9

    .line 140
    add-int/lit8 v0, p1, 0x2

    invoke-static {v6, v0}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    :cond_9
    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    and-int/lit8 v1, v6, 0x3f

    or-int/2addr v0, v1

    .line 144
    const/16 v1, 0x800

    if-ge v0, v1, :cond_a

    .line 149
    add-int/lit8 v0, p1, 0x2

    invoke-static {v6, v0}, Lmao/util/Utf8Utils;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 151
    :cond_a
    int-to-char v0, v0

    .line 152
    add-int/lit8 v1, p1, 0x3

    .line 153
    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static writeEscapedChar(Ljava/io/Writer;C)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "C)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0x5c

    const/16 v1, 0x10

    .line 181
    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    if-ge p1, v3, :cond_2

    .line 182
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    .line 183
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(I)V

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_2
    if-gt p1, v3, :cond_3

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 195
    :cond_3
    :pswitch_0
    const-string v0, "\\u"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 196
    shr-int/lit8 v0, p1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 197
    shr-int/lit8 v0, p1, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 198
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    .line 199
    and-int/lit8 v0, p1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 189
    :pswitch_1
    const-string v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v0, "\\r"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    const-string v0, "\\t"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static writeEscapedString(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
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
    const/16 v4, 0x7f

    const/16 v3, 0x5c

    .line 204
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 207
    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    if-ge v1, v4, :cond_3

    .line 208
    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_2

    .line 209
    :cond_1
    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 211
    :cond_2
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_3
    if-gt v1, v4, :cond_4

    .line 214
    packed-switch v1, :pswitch_data_0

    .line 237
    :cond_4
    :pswitch_0
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 215
    :pswitch_1
    const-string v1, "\\n"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :pswitch_2
    const-string v1, "\\r"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :pswitch_3
    const-string v1, "\\t"

    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
