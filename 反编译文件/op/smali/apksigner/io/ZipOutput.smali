.class public Lapksigner/io/ZipOutput;
.super Ljava/lang/Object;
.source "ZipOutput.java"


# instance fields
.field entriesWritten:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lapksigner/io/ZioEntry;",
            ">;"
        }
    .end annotation
.end field

.field filePointer:I

.field namesWritten:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field out:Ljava/io/OutputStream;

.field outputFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->namesWritten:Ljava/util/Set;

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZipOutput;->outputFilename:Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lapksigner/io/ZipOutput;->init(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->namesWritten:Ljava/util/Set;

    .line 64
    iput-object p1, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->namesWritten:Ljava/util/Set;

    .line 43
    iput-object p1, p0, Lapksigner/io/ZipOutput;->outputFilename:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lapksigner/io/ZipOutput;->outputFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v0}, Lapksigner/io/ZipOutput;->init(Ljava/io/File;)V

    return-void
.end method

.method private init(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
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
    .line 57
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 58
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
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
    .line 83
    new-instance v1, Lapksigner/io/CentralEnd;

    invoke-direct {v1}, Lapksigner/io/CentralEnd;-><init>()V

    .line 85
    invoke-virtual {p0}, Lapksigner/io/ZipOutput;->getFilePointer()I

    move-result v0

    iput v0, v1, Lapksigner/io/CentralEnd;->centralStartOffset:I

    .line 86
    iget-object v0, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lapksigner/io/CentralEnd;->totalCentralEntries:S

    iput-short v0, v1, Lapksigner/io/CentralEnd;->numCentralEntries:S

    .line 88
    iget-object v0, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 89
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lapksigner/io/ZipOutput;->getFilePointer()I

    move-result v0

    iget v2, v1, Lapksigner/io/CentralEnd;->centralStartOffset:I

    sub-int/2addr v0, v2

    iput v0, v1, Lapksigner/io/CentralEnd;->centralDirectorySize:I

    .line 93
    const-string v0, ""

    iput-object v0, v1, Lapksigner/io/CentralEnd;->fileComment:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, p0}, Lapksigner/io/CentralEnd;->write(Lapksigner/io/ZipOutput;)V

    .line 97
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    .line 88
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;

    .line 89
    invoke-virtual {v0, p0}, Lapksigner/io/ZioEntry;->write(Lapksigner/io/ZipOutput;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getFilePointer()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return v0
.end method

.method public write(Lapksigner/io/ZioEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapksigner/io/ZioEntry;",
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
    .line 69
    invoke-virtual {p1}, Lapksigner/io/ZioEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lapksigner/io/ZipOutput;->namesWritten:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1, p0}, Lapksigner/io/ZioEntry;->writeLocalEntry(Lapksigner/io/ZipOutput;)V

    .line 74
    iget-object v1, p0, Lapksigner/io/ZipOutput;->entriesWritten:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, p0, Lapksigner/io/ZipOutput;->namesWritten:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public writeBytes([B)V
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
    .line 134
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 135
    iget v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeBytes([BII)V
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
    .line 140
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 141
    iget v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    add-int/2addr v0, p3

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return-void
.end method

.method public writeInt(I)V
    .locals 4
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
    const/4 v3, 0x4

    .line 106
    new-array v1, v3, [B

    .line 107
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 111
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 112
    iget v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return-void

    .line 108
    :cond_0
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 109
    shr-int/lit8 p1, p1, 0x8

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 116
    new-array v1, v3, [B

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 121
    iget-object v0, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    iget v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return-void

    .line 118
    :cond_0
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 119
    shr-int/lit8 v2, p1, 0x8

    int-to-short p1, v2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 128
    iget-object v1, p0, Lapksigner/io/ZipOutput;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 129
    iget v1, p0, Lapksigner/io/ZipOutput;->filePointer:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lapksigner/io/ZipOutput;->filePointer:I

    return-void
.end method
