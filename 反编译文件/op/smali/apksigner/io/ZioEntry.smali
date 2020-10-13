.class public Lapksigner/io/ZioEntry;
.super Ljava/lang/Object;
.source "ZioEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static alignBytes:[B


# instance fields
.field private compressedSize:I

.field private compression:S

.field private crc32:I

.field private data:[B

.field private dataPosition:J

.field private diskNumberStart:S

.field private entryOut:Lapksigner/io/ZioEntryOutputStream;

.field private externalAttributes:I

.field private extraData:[B

.field private fileComment:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private generalPurposeBits:S

.field private internalAttributes:S

.field private localHeaderOffset:I

.field private modificationDate:S

.field private modificationTime:S

.field private numAlignBytes:S

.field private size:I

.field private versionMadeBy:S

.field private versionRequired:S

.field private zipInput:Lapksigner/io/ZipInput;


# direct methods
.method static final constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lapksigner/io/ZioEntry;->alignBytes:[B

    return-void
.end method

.method public constructor <init>(Lapksigner/io/ZipInput;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    int-to-short v0, v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    const/4 v0, -0x1

    int-to-long v2, v0

    iput-wide v2, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    move-object v0, v1

    check-cast v0, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    check-cast v1, Lapksigner/io/ZioEntryOutputStream;

    iput-object v1, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 63
    iput-object p1, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, v4

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    const/4 v0, -0x1

    int-to-long v2, v0

    iput-wide v2, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    move-object v0, v1

    check-cast v0, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    check-cast v1, Lapksigner/io/ZioEntryOutputStream;

    iput-object v1, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 67
    iput-object p1, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    .line 69
    const/16 v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    .line 70
    new-array v0, v4, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapksigner/io/ZioEntry;->setTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, v2

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    const/4 v0, -0x1

    int-to-long v3, v0

    iput-wide v3, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    move-object v0, v1

    check-cast v0, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    check-cast v1, Lapksigner/io/ZioEntryOutputStream;

    iput-object v1, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 78
    new-instance v0, Lapksigner/io/ZipInput;

    invoke-direct {v0, p2}, Lapksigner/io/ZipInput;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    .line 79
    iput-object p1, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    .line 81
    int-to-short v0, v2

    iput-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    .line 82
    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    invoke-virtual {v0}, Lapksigner/io/ZipInput;->getFileLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lapksigner/io/ZioEntry;->size:I

    .line 83
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    iput v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 87
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 89
    const/16 v0, 0x1fa0

    new-array v3, v0, [B

    move v0, v2

    .line 92
    :cond_0
    :goto_0
    iget v4, p0, Lapksigner/io/ZioEntry;->size:I

    if-ne v0, v4, :cond_1

    .line 100
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    .line 102
    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lapksigner/io/ZipInput;->seek(J)V

    .line 103
    int-to-long v0, v2

    iput-wide v0, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    .line 104
    new-array v0, v2, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapksigner/io/ZioEntry;->setTime(J)V

    return-void

    .line 93
    :cond_1
    iget-object v4, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    array-length v5, v3

    iget v6, p0, Lapksigner/io/ZioEntry;->size:I

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lapksigner/io/ZipInput;->read([BII)I

    move-result v4

    .line 94
    if-lez v4, :cond_0

    .line 95
    invoke-virtual {v1, v3, v2, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 96
    add-int/2addr v0, v4

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;SIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, v4

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    const/4 v0, -0x1

    int-to-long v2, v0

    iput-wide v2, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    move-object v0, v1

    check-cast v0, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    check-cast v1, Lapksigner/io/ZioEntryOutputStream;

    iput-object v1, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 113
    new-instance v0, Lapksigner/io/ZipInput;

    invoke-direct {v0, p2}, Lapksigner/io/ZipInput;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    .line 114
    iput-object p1, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    .line 116
    iput-short p3, p0, Lapksigner/io/ZioEntry;->compression:S

    .line 117
    iput p4, p0, Lapksigner/io/ZioEntry;->crc32:I

    .line 118
    iput p5, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 119
    iput p6, p0, Lapksigner/io/ZioEntry;->size:I

    .line 120
    int-to-long v0, v4

    iput-wide v0, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    .line 121
    new-array v0, v4, [B

    iput-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    .line 122
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lapksigner/io/ZioEntry;->setTime(J)V

    return-void
.end method

.method private doRead(Lapksigner/io/ZipInput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapksigner/io/ZipInput;",
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
    const/4 v6, 0x0

    .line 307
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->versionMadeBy:S

    .line 310
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->versionRequired:S

    .line 313
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    .line 315
    iget-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    const v1, 0xf7f1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t handle general purpose bits == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0x%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-short v4, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    new-instance v5, Ljava/lang/Short;

    invoke-direct {v5, v4}, Ljava/lang/Short;-><init>(S)V

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    .line 323
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    .line 326
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    .line 329
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    .line 332
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 335
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->size:I

    .line 338
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    .line 341
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v1

    .line 343
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v2

    .line 345
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v3

    iput-short v3, p0, Lapksigner/io/ZioEntry;->diskNumberStart:S

    .line 347
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v3

    iput-short v3, p0, Lapksigner/io/ZioEntry;->internalAttributes:S

    .line 349
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v3

    iput v3, p0, Lapksigner/io/ZioEntry;->externalAttributes:I

    .line 351
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v3

    iput v3, p0, Lapksigner/io/ZioEntry;->localHeaderOffset:I

    .line 354
    invoke-virtual {p1, v0}, Lapksigner/io/ZipInput;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    .line 356
    invoke-virtual {p1, v1}, Lapksigner/io/ZipInput;->readBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    .line 358
    invoke-virtual {p1, v2}, Lapksigner/io/ZipInput;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    .line 360
    iget-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    and-int/lit16 v0, v0, 0x800

    int-to-short v0, v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    .line 363
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    if-nez v0, :cond_1

    .line 364
    iput v6, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 365
    int-to-short v0, v6

    iput-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    .line 366
    iput v6, p0, Lapksigner/io/ZioEntry;->crc32:I

    :cond_1
    return-void
.end method

.method public static read(Lapksigner/io/ZipInput;)Lapksigner/io/ZioEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    .line 290
    const v1, 0x2014b50

    if-eq v0, v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lapksigner/io/ZipInput;->getFilePointer()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lapksigner/io/ZipInput;->seek(J)V

    .line 293
    const/4 v0, 0x0

    check-cast v0, Lapksigner/io/ZioEntry;

    .line 299
    :goto_0
    return-object v0

    .line 296
    :cond_0
    new-instance v0, Lapksigner/io/ZioEntry;

    invoke-direct {v0, p0}, Lapksigner/io/ZioEntry;-><init>(Lapksigner/io/ZipInput;)V

    .line 298
    invoke-direct {v0, p0}, Lapksigner/io/ZioEntry;->doRead(Lapksigner/io/ZipInput;)V

    goto :goto_0
.end method


# virtual methods
.method public getClonedEntry(Ljava/lang/String;)Lapksigner/io/ZioEntry;
    .locals 2

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lapksigner/io/ZioEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    invoke-virtual {v0, p1}, Lapksigner/io/ZioEntry;->setName(Ljava/lang/String;)V

    .line 138
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "clone() failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressedSize()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    return v0
.end method

.method public getCompression()S
    .locals 1

    .prologue
    .line 526
    iget-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    return v0
.end method

.method public getCrc32()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    return v0
.end method

.method public getData()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    .line 386
    :goto_0
    return-object v0

    .line 376
    :cond_0
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    new-array v2, v0, [B

    .line 378
    invoke-virtual {p0}, Lapksigner/io/ZioEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move v0, v1

    .line 381
    :goto_1
    iget v4, p0, Lapksigner/io/ZioEntry;->size:I

    if-ne v0, v4, :cond_1

    move-object v0, v2

    .line 386
    goto :goto_0

    .line 382
    :cond_1
    iget v4, p0, Lapksigner/io/ZioEntry;->size:I

    sub-int/2addr v4, v0

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 383
    if-gez v4, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Read failed, expecting %d bytes, got %d instead"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lapksigner/io/ZioEntry;->size:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v1

    const/4 v1, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_2
    add-int/2addr v0, v4

    goto :goto_1
.end method

.method public getDataPosition()J
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    return-wide v0
.end method

.method public getDiskNumberStart()S
    .locals 1

    .prologue
    .line 550
    iget-short v0, p0, Lapksigner/io/ZioEntry;->diskNumberStart:S

    return v0
.end method

.method public getEntryOut()Lapksigner/io/ZioEntryOutputStream;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    return-object v0
.end method

.method public getExternalAttributes()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lapksigner/io/ZioEntry;->externalAttributes:I

    return v0
.end method

.method public getExtraData()[B
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    return-object v0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralPurposeBits()S
    .locals 1

    .prologue
    .line 522
    iget-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lapksigner/io/ZioEntry;->getInputStream(Ljava/io/OutputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/io/OutputStream;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 397
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->close()V

    .line 399
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getSize()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->size:I

    .line 400
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getWrappedStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    .line 401
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    array-length v0, v0

    iput v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 402
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getCRC()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    .line 403
    const/4 v0, 0x0

    check-cast v0, Lapksigner/io/ZioEntryOutputStream;

    iput-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 404
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lapksigner/io/ZioEntry;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 405
    iget-short v1, p0, Lapksigner/io/ZioEntry;->compression:S

    if-nez v1, :cond_0

    .line 423
    :goto_0
    return-object v0

    .line 409
    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v4, v5, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v0, v3}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v1, v2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    move-object v0, v1

    goto :goto_0

    .line 413
    :cond_1
    new-instance v1, Lapksigner/io/ZioEntryInputStream;

    invoke-direct {v1, p0}, Lapksigner/io/ZioEntryInputStream;-><init>(Lapksigner/io/ZioEntry;)V

    .line 415
    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Lapksigner/io/ZioEntryInputStream;->setMonitorStream(Ljava/io/OutputStream;)V

    .line 416
    :cond_2
    iget-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    if-eqz v0, :cond_3

    .line 420
    invoke-virtual {v1, v5}, Lapksigner/io/ZioEntryInputStream;->setReturnDummyByte(Z)V

    .line 421
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 423
    goto :goto_0
.end method

.method public getInternalAttributes()S
    .locals 1

    .prologue
    .line 554
    iget-short v0, p0, Lapksigner/io/ZioEntry;->internalAttributes:S

    return v0
.end method

.method public getLocalHeaderOffset()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lapksigner/io/ZioEntry;->localHeaderOffset:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Lapksigner/io/ZioEntryOutputStream;

    iget-short v1, p0, Lapksigner/io/ZioEntry;->compression:S

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1, v2}, Lapksigner/io/ZioEntryOutputStream;-><init>(ILjava/io/OutputStream;)V

    iput-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    .line 430
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    return v0
.end method

.method public getTime()J
    .locals 7

    .prologue
    .line 466
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v1, v0, 0x50

    .line 467
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0xf

    add-int/lit8 v2, v0, -0x1

    .line 468
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    and-int/lit8 v3, v0, 0x1f

    .line 469
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v4, v0, 0x1f

    .line 470
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v5, v0, 0x3f

    .line 471
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    shl-int/lit8 v0, v0, 0x1

    and-int/lit8 v6, v0, 0x3e

    .line 472
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 473
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionMadeBy()S
    .locals 1

    .prologue
    .line 514
    iget-short v0, p0, Lapksigner/io/ZioEntry;->versionMadeBy:S

    return v0
.end method

.method public getVersionRequired()S
    .locals 1

    .prologue
    .line 518
    iget-short v0, p0, Lapksigner/io/ZioEntry;->versionRequired:S

    return v0
.end method

.method public getZipInput()Lapksigner/io/ZipInput;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readLocalHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    .line 144
    iget v1, p0, Lapksigner/io/ZioEntry;->localHeaderOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lapksigner/io/ZipInput;->seek(J)V

    .line 150
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readInt()I

    move-result v1

    .line 151
    const v2, 0x4034b50

    if-eq v1, v2, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Local header not found at pos=0x%08x, file=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lapksigner/io/ZipInput;->getFilePointer()J

    move-result-wide v5

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v5, v6}, Ljava/lang/Long;-><init>(J)V

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    .line 168
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    .line 171
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    .line 174
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    .line 177
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    .line 180
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readInt()I

    .line 183
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readInt()I

    .line 186
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readInt()I

    .line 189
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    move-result v1

    .line 192
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->readShort()S

    move-result v2

    .line 195
    invoke-virtual {v0, v1}, Lapksigner/io/ZipInput;->readString(I)Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v2}, Lapksigner/io/ZipInput;->readBytes(I)[B

    .line 201
    invoke-virtual {v0}, Lapksigner/io/ZipInput;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    return-void
.end method

.method public setCompression(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 510
    int-to-short v0, p1

    iput-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    iput-object p1, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 481
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    .line 483
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_0

    .line 484
    const/high16 v0, 0x210000

    int-to-long v0, v0

    .line 492
    :goto_0
    const/16 v2, 0x10

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    .line 493
    const v2, 0xffff

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    return-void

    .line 487
    :cond_0
    add-int/lit16 v1, v1, -0x7bc

    shl-int/lit8 v1, v1, 0x19

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public write(Lapksigner/io/ZipOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapksigner/io/ZipOutput;",
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
    .line 437
    const v0, 0x2014b50

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 438
    iget-short v0, p0, Lapksigner/io/ZioEntry;->versionMadeBy:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 439
    iget-short v0, p0, Lapksigner/io/ZioEntry;->versionRequired:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 440
    iget-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 441
    iget-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 442
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 443
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 444
    iget v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 445
    iget v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 446
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 447
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 448
    iget-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    array-length v0, v0

    iget-short v1, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 449
    iget-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 450
    iget-short v0, p0, Lapksigner/io/ZioEntry;->diskNumberStart:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 451
    iget-short v0, p0, Lapksigner/io/ZioEntry;->internalAttributes:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 452
    iget v0, p0, Lapksigner/io/ZioEntry;->externalAttributes:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 453
    iget v0, p0, Lapksigner/io/ZioEntry;->localHeaderOffset:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 455
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeBytes([B)V

    .line 457
    iget-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    if-lez v0, :cond_0

    sget-object v0, Lapksigner/io/ZioEntry;->alignBytes:[B

    const/4 v1, 0x0

    iget-short v2, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    invoke-virtual {p1, v0, v1, v2}, Lapksigner/io/ZipOutput;->writeBytes([BII)V

    .line 458
    :cond_0
    iget-object v0, p0, Lapksigner/io/ZioEntry;->fileComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeLocalEntry(Lapksigner/io/ZipOutput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapksigner/io/ZipOutput;",
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
    const/4 v9, 0x0

    .line 207
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    if-nez v0, :cond_0

    iget-wide v0, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    int-to-long v2, v9

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lapksigner/io/ZioEntry;->readLocalHeader()V

    .line 211
    :cond_0
    invoke-virtual {p1}, Lapksigner/io/ZipOutput;->getFilePointer()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->localHeaderOffset:I

    .line 215
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->close()V

    .line 217
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getSize()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->size:I

    .line 218
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getWrappedStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    .line 219
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    array-length v0, v0

    iput v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    .line 220
    iget-object v0, p0, Lapksigner/io/ZioEntry;->entryOut:Lapksigner/io/ZioEntryOutputStream;

    invoke-virtual {v0}, Lapksigner/io/ZioEntryOutputStream;->getCRC()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    .line 223
    :cond_1
    const v0, 0x4034b50

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 224
    iget-short v0, p0, Lapksigner/io/ZioEntry;->versionRequired:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 225
    iget-short v0, p0, Lapksigner/io/ZioEntry;->generalPurposeBits:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 226
    iget-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 227
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationTime:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 228
    iget-short v0, p0, Lapksigner/io/ZioEntry;->modificationDate:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 229
    iget v0, p0, Lapksigner/io/ZioEntry;->crc32:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 230
    iget v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 231
    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 234
    int-to-short v0, v9

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    .line 237
    iget-short v0, p0, Lapksigner/io/ZioEntry;->compression:S

    if-nez v0, :cond_2

    iget v0, p0, Lapksigner/io/ZioEntry;->size:I

    if-lez v0, :cond_2

    .line 239
    invoke-virtual {p1}, Lapksigner/io/ZipOutput;->getFilePointer()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lapksigner/io/ZioEntry;->extraData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 241
    const/4 v2, 0x4

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    .line 243
    if-lez v0, :cond_2

    .line 244
    rsub-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    .line 250
    :cond_2
    iget-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    array-length v0, v0

    iget-short v1, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 253
    iget-object v0, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lapksigner/io/ZioEntry;->extraData:[B

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeBytes([B)V

    .line 259
    iget-short v0, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    if-lez v0, :cond_3

    .line 260
    sget-object v0, Lapksigner/io/ZioEntry;->alignBytes:[B

    iget-short v1, p0, Lapksigner/io/ZioEntry;->numAlignBytes:S

    invoke-virtual {p1, v0, v9, v1}, Lapksigner/io/ZipOutput;->writeBytes([BII)V

    .line 263
    :cond_3
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    if-eqz v0, :cond_5

    .line 264
    iget-object v0, p0, Lapksigner/io/ZioEntry;->data:[B

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeBytes([B)V

    .line 274
    :cond_4
    return-void

    .line 268
    :cond_5
    iget-object v0, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    iget-wide v1, p0, Lapksigner/io/ZioEntry;->dataPosition:J

    invoke-virtual {v0, v1, v2}, Lapksigner/io/ZipInput;->seek(J)V

    .line 270
    iget v0, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    const/16 v1, 0x1fa0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 271
    new-array v3, v2, [B

    .line 272
    int-to-long v0, v9

    .line 274
    :goto_0
    iget v4, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 275
    iget-object v4, p0, Lapksigner/io/ZioEntry;->zipInput:Lapksigner/io/ZipInput;

    iget-object v4, v4, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    iget v5, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    int-to-long v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v3, v9, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 276
    if-lez v4, :cond_6

    .line 277
    invoke-virtual {p1, v3, v9, v4}, Lapksigner/io/ZipOutput;->writeBytes([BII)V

    .line 278
    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    .line 280
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "EOF reached while copying %s with %d bytes left to go"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lapksigner/io/ZioEntry;->filename:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x1

    iget v6, p0, Lapksigner/io/ZioEntry;->compressedSize:I

    int-to-long v6, v6

    sub-long v0, v6, v0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
