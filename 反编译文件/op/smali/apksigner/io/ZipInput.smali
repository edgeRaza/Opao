.class public Lapksigner/io/ZipInput;
.super Ljava/lang/Object;
.source "ZipInput.java"


# instance fields
.field centralEnd:Lapksigner/io/CentralEnd;

.field fileLength:J

.field in:Ljava/io/RandomAccessFile;

.field public inputFilename:Ljava/lang/String;

.field manifest:Ljava/util/jar/Manifest;

.field scanIterations:I

.field zioEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lapksigner/io/ZioEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput v0, p0, Lapksigner/io/ZipInput;->scanIterations:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZipInput;->inputFilename:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 58
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lapksigner/io/ZipInput;->fileLength:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    check-cast v0, Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput v0, p0, Lapksigner/io/ZipInput;->scanIterations:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    .line 50
    iput-object p1, p0, Lapksigner/io/ZipInput;->inputFilename:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lapksigner/io/ZipInput;->inputFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    .line 52
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lapksigner/io/ZipInput;->fileLength:J

    return-void
.end method

.method private doRead()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 154
    const/16 v0, 0x100

    :try_start_0
    invoke-virtual {p0, v0}, Lapksigner/io/ZipInput;->scanForEOCDR(I)J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    invoke-static {p0}, Lapksigner/io/CentralEnd;->read(Lapksigner/io/ZipInput;)Lapksigner/io/CentralEnd;

    move-result-object v0

    iput-object v0, p0, Lapksigner/io/ZipInput;->centralEnd:Lapksigner/io/CentralEnd;

    .line 161
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lapksigner/io/ZipInput;->centralEnd:Lapksigner/io/CentralEnd;

    iget v1, v1, Lapksigner/io/CentralEnd;->centralStartOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 163
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lapksigner/io/ZipInput;->centralEnd:Lapksigner/io/CentralEnd;

    iget-short v1, v1, Lapksigner/io/CentralEnd;->totalCentralEntries:S

    if-lt v0, v1, :cond_0

    .line 170
    :goto_1
    return-void

    .line 164
    :cond_0
    invoke-static {p0}, Lapksigner/io/ZioEntry;->read(Lapksigner/io/ZipInput;)Lapksigner/io/ZioEntry;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    invoke-virtual {v1}, Lapksigner/io/ZioEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static read(Ljava/io/File;)Lapksigner/io/ZipInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lapksigner/io/ZipInput;

    invoke-direct {v0, p0}, Lapksigner/io/ZipInput;-><init>(Ljava/io/File;)V

    .line 80
    invoke-direct {v0}, Lapksigner/io/ZipInput;->doRead()V

    .line 81
    return-object v0
.end method

.method public static read(Ljava/lang/String;)Lapksigner/io/ZipInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lapksigner/io/ZipInput;

    invoke-direct {v0, p0}, Lapksigner/io/ZipInput;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-direct {v0}, Lapksigner/io/ZipInput;->doRead()V

    .line 75
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lapksigner/io/ZioEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lapksigner/io/ZioEntry;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;

    return-object v0
.end method

.method public getFileLength()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lapksigner/io/ZipInput;->fileLength:J

    return-wide v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lapksigner/io/ZipInput;->inputFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lapksigner/io/ZipInput;->manifest:Ljava/util/jar/Manifest;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapksigner/io/ZioEntry;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/util/jar/Manifest;

    invoke-virtual {v0}, Lapksigner/io/ZioEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lapksigner/io/ZipInput;->manifest:Ljava/util/jar/Manifest;

    .line 121
    :cond_0
    iget-object v0, p0, Lapksigner/io/ZipInput;->manifest:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public list(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 99
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid path -- does not end with \'/\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_1
    const-string v0, "^%s([^/]+/?).*"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 107
    iget-object v0, p0, Lapksigner/io/ZipInput;->zioEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 109
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    return-object v2

    .line 107
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-array v1, p1, [B

    .line 218
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 221
    return-object v1

    .line 219
    :cond_0
    iget-object v2, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 195
    return v1

    .line 193
    :cond_0
    iget-object v2, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    int-to-short v1, v0

    .line 200
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 203
    return v1

    .line 201
    :cond_0
    iget-object v2, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readUnsignedByte()I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-short v1, v1

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-array v1, p1, [B

    .line 209
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 210
    :cond_0
    iget-object v2, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public scanForEOCDR(I)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    int-to-long v0, p1

    iget-wide v2, p0, Lapksigner/io/ZipInput;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x10000

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "End of central directory not found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lapksigner/io/ZipInput;->inputFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget-wide v0, p0, Lapksigner/io/ZipInput;->fileLength:J

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 133
    new-array v2, v1, [B

    .line 135
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Lapksigner/io/ZipInput;->fileLength:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 137
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 139
    add-int/lit8 v0, v1, -0x16

    :goto_0
    if-gez v0, :cond_2

    .line 146
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lapksigner/io/ZipInput;->scanForEOCDR(I)J

    move-result-wide v0

    :goto_1
    return-wide v0

    .line 140
    :cond_2
    iget v3, p0, Lapksigner/io/ZipInput;->scanIterations:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lapksigner/io/ZipInput;->scanIterations:I

    .line 141
    aget-byte v3, v2, v0

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    const/16 v4, 0x4b

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v2, v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v2, v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 142
    iget-wide v2, p0, Lapksigner/io/ZipInput;->fileLength:J

    int-to-long v4, v1

    sub-long v1, v2, v4

    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lapksigner/io/ZipInput;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
