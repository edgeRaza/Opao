.class public Lmao/res/ARSCDecoder;
.super Ljava/lang/Object;
.source "ARSCDecoder.java"


# static fields
.field public static final ARSC_CHUNK_TYPE:I = 0xc0002

.field public static final CHECK_PACKAGE:I = 0x200


# instance fields
.field buf:[B

.field byteOut:Ljava/io/ByteArrayOutputStream;

.field id:I

.field private final mIn:Lmao/util/LEDataInputStream;

.field private mResId:I

.field private mSpecNames:Lmao/res/StringBlock;

.field public mTableStrings:Lmao/res/StringBlock;

.field private mTypeNames:Lmao/res/StringBlock;

.field name:Ljava/lang/String;

.field packageCount:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmao/res/ARSCDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    .line 42
    new-instance v0, Lmao/util/LEDataInputStream;

    invoke-direct {v0, p1}, Lmao/util/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

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
    .line 151
    if-eq p1, p2, :cond_0

    .line 152
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

.method public static read(Ljava/util/List;Ljava/io/InputStream;)Lmao/res/ARSCDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Lmao/res/ARSCDecoder;",
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
    .line 78
    new-instance v0, Lmao/res/ARSCDecoder;

    invoke-direct {v0, p1}, Lmao/res/ARSCDecoder;-><init>(Ljava/io/InputStream;)V

    .line 80
    invoke-direct {v0, p0}, Lmao/res/ARSCDecoder;->readTable(Ljava/util/List;)V

    .line 81
    return-object v0
.end method

.method private readPackage()V
    .locals 5
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
    const/16 v4, 0x800

    const/4 v3, 0x0

    .line 142
    new-array v0, v4, [B

    .line 145
    :goto_0
    iget-object v1, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v1, v0, v3, v4}, Lmao/util/LEDataInputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lmao/res/ARSCDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private readTable(Ljava/util/List;)V
    .locals 2
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
    .line 46
    iget-object v0, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v0

    .line 47
    const v1, 0xc0002

    invoke-direct {p0, v0, v1}, Lmao/res/ARSCDecoder;->checkChunk(II)V

    .line 48
    iget-object v0, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v0}, Lmao/util/LEDataInputStream;->readInt()I

    .line 50
    iget-object v0, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-virtual {v0}, Lmao/util/LEDataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lmao/res/ARSCDecoder;->packageCount:I

    .line 52
    iget-object v0, p0, Lmao/res/ARSCDecoder;->mIn:Lmao/util/LEDataInputStream;

    invoke-static {v0}, Lmao/res/StringBlock;->read(Lmao/util/LEDataInputStream;)Lmao/res/StringBlock;

    move-result-object v0

    iput-object v0, p0, Lmao/res/ARSCDecoder;->mTableStrings:Lmao/res/StringBlock;

    .line 53
    invoke-direct {p0}, Lmao/res/ARSCDecoder;->readPackage()V

    .line 54
    iget-object v0, p0, Lmao/res/ARSCDecoder;->mTableStrings:Lmao/res/StringBlock;

    invoke-virtual {v0, p1}, Lmao/res/StringBlock;->getStrings(Ljava/util/List;)V

    return-void
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
    .line 58
    new-instance v0, Lmao/util/LEDataOutputStream;

    invoke-direct {v0, p2}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0}, Lmao/res/ARSCDecoder;->write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V

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
    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    new-instance v1, Lmao/util/LEDataOutputStream;

    invoke-direct {v1, v0}, Lmao/util/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    iget v2, p0, Lmao/res/ARSCDecoder;->packageCount:I

    invoke-virtual {v1, v2}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 67
    iget-object v2, p0, Lmao/res/ARSCDecoder;->mTableStrings:Lmao/res/StringBlock;

    invoke-virtual {v2, p1, v1}, Lmao/res/StringBlock;->write(Ljava/util/List;Lmao/util/LEDataOutputStream;)V

    .line 68
    invoke-virtual {p0, v1}, Lmao/res/ARSCDecoder;->writePackage(Lmao/util/LEDataOutputStream;)V

    .line 70
    const v1, 0xc0002

    invoke-virtual {p2, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 71
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, v1}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    return-void
.end method

.method public writePackage(Lmao/util/LEDataOutputStream;)V
    .locals 1
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
    .line 119
    iget-object v0, p0, Lmao/res/ARSCDecoder;->byteOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lmao/util/LEDataOutputStream;->writeFully([B)V

    return-void
.end method
