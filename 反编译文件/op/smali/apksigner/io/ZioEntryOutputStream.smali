.class public Lapksigner/io/ZioEntryOutputStream;
.super Ljava/io/OutputStream;
.source "ZioEntryOutputStream.java"


# instance fields
.field crc:Ljava/util/zip/CRC32;

.field crcValue:I

.field downstream:Ljava/io/OutputStream;

.field size:I

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/io/OutputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v1, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    iput v1, p0, Lapksigner/io/ZioEntryOutputStream;->crcValue:I

    .line 33
    iput-object p2, p0, Lapksigner/io/ZioEntryOutputStream;->wrapped:Ljava/io/OutputStream;

    .line 34
    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    new-instance v1, Ljava/util/zip/Deflater;

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {v0, p2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    .line 36
    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
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
    .line 40
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 41
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 42
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lapksigner/io/ZioEntryOutputStream;->crcValue:I

    return-void
.end method

.method public flush()V
    .locals 1
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
    .line 50
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getCRC()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lapksigner/io/ZioEntryOutputStream;->crcValue:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    return v0
.end method

.method public getWrappedStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->wrapped:Ljava/io/OutputStream;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 67
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    .line 68
    iget v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 55
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 56
    iget v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 61
    iget-object v0, p0, Lapksigner/io/ZioEntryOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 62
    iget v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lapksigner/io/ZioEntryOutputStream;->size:I

    return-void
.end method
