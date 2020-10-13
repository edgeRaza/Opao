.class public Lapksigner/io/CentralEnd;
.super Ljava/lang/Object;
.source "CentralEnd.java"


# instance fields
.field public centralDirectorySize:I

.field public centralStartDisk:S

.field public centralStartOffset:I

.field public fileComment:Ljava/lang/String;

.field public numCentralEntries:S

.field public numberThisDisk:S

.field public signature:I

.field public totalCentralEntries:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x6054b50

    iput v0, p0, Lapksigner/io/CentralEnd;->signature:I

    int-to-short v0, v1

    iput-short v0, p0, Lapksigner/io/CentralEnd;->numberThisDisk:S

    int-to-short v0, v1

    iput-short v0, p0, Lapksigner/io/CentralEnd;->centralStartDisk:S

    return-void
.end method

.method private doRead(Lapksigner/io/ZipInput;)V
    .locals 1
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
    .line 54
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/CentralEnd;->numberThisDisk:S

    .line 56
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/CentralEnd;->centralStartDisk:S

    .line 58
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/CentralEnd;->numCentralEntries:S

    .line 60
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lapksigner/io/CentralEnd;->totalCentralEntries:S

    .line 62
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    iput v0, p0, Lapksigner/io/CentralEnd;->centralDirectorySize:I

    .line 64
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    iput v0, p0, Lapksigner/io/CentralEnd;->centralStartOffset:I

    .line 66
    invoke-virtual {p1}, Lapksigner/io/ZipInput;->readShort()S

    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Lapksigner/io/ZipInput;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/CentralEnd;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public static read(Lapksigner/io/ZipInput;)Lapksigner/io/CentralEnd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lapksigner/io/ZipInput;->readInt()I

    move-result v0

    .line 38
    const v1, 0x6054b50

    if-eq v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lapksigner/io/ZipInput;->getFilePointer()J

    move-result-wide v0

    const/4 v2, 0x4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lapksigner/io/ZipInput;->seek(J)V

    .line 41
    const/4 v0, 0x0

    check-cast v0, Lapksigner/io/CentralEnd;

    .line 47
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lapksigner/io/CentralEnd;

    invoke-direct {v0}, Lapksigner/io/CentralEnd;-><init>()V

    .line 46
    invoke-direct {v0, p0}, Lapksigner/io/CentralEnd;->doRead(Lapksigner/io/ZipInput;)V

    goto :goto_0
.end method


# virtual methods
.method public write(Lapksigner/io/ZipOutput;)V
    .locals 1
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
    .line 77
    iget v0, p0, Lapksigner/io/CentralEnd;->signature:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 78
    iget-short v0, p0, Lapksigner/io/CentralEnd;->numberThisDisk:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 79
    iget-short v0, p0, Lapksigner/io/CentralEnd;->centralStartDisk:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 80
    iget-short v0, p0, Lapksigner/io/CentralEnd;->numCentralEntries:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 81
    iget-short v0, p0, Lapksigner/io/CentralEnd;->totalCentralEntries:S

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 82
    iget v0, p0, Lapksigner/io/CentralEnd;->centralDirectorySize:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 83
    iget v0, p0, Lapksigner/io/CentralEnd;->centralStartOffset:I

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeInt(I)V

    .line 84
    iget-object v0, p0, Lapksigner/io/CentralEnd;->fileComment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeShort(S)V

    .line 85
    iget-object v0, p0, Lapksigner/io/CentralEnd;->fileComment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lapksigner/io/ZipOutput;->writeString(Ljava/lang/String;)V

    return-void
.end method
