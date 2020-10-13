.class public final Lmao/util/LEDataOutputStream;
.super Ljava/lang/Object;
.source "LEDataOutputStream.java"


# instance fields
.field protected dos:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public final writeByte(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public final writeChar(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 29
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public final writeCharArray([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 34
    :cond_0
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lmao/util/LEDataOutputStream;->writeChar(C)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final writeFully([B)V
    .locals 3
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
    .line 43
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public final writeFully([BII)V
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
    .line 46
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public final writeInt(I)V
    .locals 2
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
    .line 50
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 52
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 53
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public final writeIntArray([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmao/util/LEDataOutputStream;->writeIntArray([III)V

    return-void
.end method

.method public final writeIntArray([III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)V^",
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
    :goto_0
    if-lt p2, p3, :cond_0

    return-void

    .line 58
    :cond_0
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lmao/util/LEDataOutputStream;->writeInt(I)V

    .line 57
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final writeNulEndedString(Ljava/lang/String;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V^",
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

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    .line 70
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    if-nez p2, :cond_2

    .line 74
    :cond_0
    if-eqz p3, :cond_1

    move v0, v1

    .line 75
    :goto_1
    mul-int/lit8 v2, p2, 0x2

    if-lt v0, v2, :cond_3

    :cond_1
    return-void

    .line 71
    :cond_2
    add-int/lit8 v2, v0, 0x1

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Lmao/util/LEDataOutputStream;->writeChar(C)V

    .line 72
    add-int/lit8 p2, p2, -0x1

    move v0, v2

    goto :goto_0

    .line 76
    :cond_3
    iget-object v2, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final writeShort(S)V
    .locals 2
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
    .line 19
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 20
    iget-object v0, p0, Lmao/util/LEDataOutputStream;->dos:Ljava/io/DataOutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method
