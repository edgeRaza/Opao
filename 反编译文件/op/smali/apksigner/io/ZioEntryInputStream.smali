.class public Lapksigner/io/ZioEntryInputStream;
.super Ljava/io/InputStream;
.source "ZioEntryInputStream.java"


# instance fields
.field monitor:Ljava/io/OutputStream;

.field offset:I

.field raf:Ljava/io/RandomAccessFile;

.field returnDummyByte:Z

.field size:I


# direct methods
.method public constructor <init>(Lapksigner/io/ZioEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v2, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    .line 36
    iput v2, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    .line 37
    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->getCompressedSize()I

    move-result v0

    iput v0, p0, Lapksigner/io/ZioEntryInputStream;->size:I

    .line 38
    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->getZipInput()Lapksigner/io/ZipInput;

    move-result-object v0

    iget-object v0, v0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 39
    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->getDataPosition()J

    move-result-wide v0

    .line 40
    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 41
    iget-object v0, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->getDataPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->readLocalHeader()V

    goto :goto_0
.end method

.method private readBytes([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lapksigner/io/ZioEntryInputStream;->size:I

    iget v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 100
    iget-boolean v0, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz v0, :cond_1

    .line 101
    iput-boolean v2, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    .line 102
    int-to-byte v0, v2

    aput-byte v0, p1, p2

    .line 103
    const/4 v0, 0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lapksigner/io/ZioEntryInputStream;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 108
    iget-object v1, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 109
    if-lez v0, :cond_0

    .line 110
    iget-object v1, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    :cond_3
    iget v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    add-int/2addr v1, v0

    iput v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Lapksigner/io/ZioEntryInputStream;->size:I

    iget v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    sub-int/2addr v0, v1

    .line 72
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 73
    :cond_0
    return v0
.end method

.method public close()V
    .locals 0
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

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public markSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 78
    iget v1, p0, Lapksigner/io/ZioEntryInputStream;->size:I

    iget v2, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 79
    iget-boolean v1, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    if-eqz v1, :cond_1

    .line 80
    iput-boolean v0, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 86
    if-ltz v0, :cond_0

    .line 87
    iget-object v1, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 88
    :cond_3
    iget v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lapksigner/io/ZioEntryInputStream;->offset:I

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lapksigner/io/ZioEntryInputStream;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lapksigner/io/ZioEntryInputStream;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public setMonitorStream(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lapksigner/io/ZioEntryInputStream;->monitor:Ljava/io/OutputStream;

    return-void
.end method

.method public setReturnDummyByte(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-boolean p1, p0, Lapksigner/io/ZioEntryInputStream;->returnDummyByte:Z

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lapksigner/io/ZioEntryInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lapksigner/io/ZioEntryInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 125
    return-wide v0
.end method
