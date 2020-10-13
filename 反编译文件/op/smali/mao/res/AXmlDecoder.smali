.class public Lmao/res/AXmlDecoder;
.super Ljava/lang/Object;
.source "AXmlDecoder.java"


# static fields
.field private static final AXML_CHUNK_TYPE:I = 0x80003


# instance fields
.field byteOut:Ljava/io/ByteArrayOutputStream;

.field private final mIn:Lmao/util/LEDataInputStream;

.field public mTableStrings:Lmao/res/StringBlock;


# direct methods
.method constructor <init>(Lmao/util/LEDataInputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmao/res/AXmlDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    .line 30
    iput-object p1, p0, Lmao/res/AXmlDecoder;->mIn:Lmao/util/LEDataInputStream;

    return-void
.end method

.method private checkChunk(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-eq p1, p2, :cond_0

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid chunk type: expected=0x%08x, got=0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    int-to-short v4, p1

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static read(Ljava/util/List;Ljava/io/InputStream;)Lmao/res/AXmlDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Lmao/res/AXmlDecoder;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lmao/res/AXmlDecoder;

    new-instance v1, Lmao/util/LEDataInputStream;

    invoke-direct {v1, p1}, Lmao/util/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lmao/res/AXmlDecoder;-><init>(Lmao/util/LEDataInputStream;)V

    .line 42
    invoke-direct {v0, p0}, Lmao/res/AXmlDecoder;->readStrings(Ljava/util/List;)V

    .line 43
    return-object v0
.end method

.method private readStrings(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v3, 0x0

    .line 18
    iget-object v0, p0, Lmao/res/AXmlDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v0

    .line 19
    const v1, 0x80003

    invoke-direct {p0, v0, v1}, Lmao/res/AXmlDecoder;->checkChunk(II)V

    .line 20
    iget-object v0, p0, Lmao/res/AXmlDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v0}, Lmao/util/LEDataInputStream;->readInt()I

    .line 21
    iget-object v0, p0, Lmao/res/AXmlDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-static {v0}, Lmao/res/StringBlock;->read(Lmao/util/LEDataInputStream;)Lmao/res/StringBlock;

    move-result-object v0

    iput-object v0, p0, Lmao/res/AXmlDecoder;->mTableStrings:Lmao/res/StringBlock;

    .line 22
    new-array v0, v4, [B

    .line 24
    :goto_0
    iget-object v1, p0, Lmao/res/AXmlDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v1, v0, v3, v4}, Lmao/util/LEDataInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 26
    iget-object v0, p0, Lmao/res/AXmlDecoder;->mTableStrings:Lmao/res/StringBlock;

    invoke-virtual {v0, p1}, Lmao/res/StringBlock;->getStrings(Ljava/util/List;)V

    return-void

    .line 25
    :cond_0
    iget-object v2, p0, Lmao/res/AXmlDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public write(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
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
    .line 47
    new-instance v0, Lmao/util/LEDataOutputStream;

    invoke-direct {v0, p2}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0}, Lmao/res/AXmlDecoder;->write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V

    return-void
.end method

.method public write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V
    .locals 3
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
    .line 52
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 53
    new-instance v1, Lmao/util/LEDataOutputStream;

    invoke-direct {v1, v0}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 54
    iget-object v2, p0, Lmao/res/AXmlDecoder;->mTableStrings:Lmao/res/StringBlock;

    invoke-virtual {v2, p1, v1}, Lmao/res/StringBlock;->write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V

    .line 55
    iget-object v2, p0, Lmao/res/AXmlDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    .line 57
    const v1, 0x80003

    invoke-virtual {p2, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    return-void
.end method
