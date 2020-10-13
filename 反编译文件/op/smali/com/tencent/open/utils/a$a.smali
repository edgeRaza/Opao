.class Lcom/tencent/open/utils/a$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Properties;

.field b:[B


# direct methods
.method private constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/Properties;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v2, v1, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/utils/a$1;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/utils/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method a([B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move-object v8, v1

    if-ne v7, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v1

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v2, v7

    invoke-static {}, Lcom/tencent/open/utils/a;->a()Lcom/tencent/open/utils/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/open/utils/m;->a()[B

    move-result-object v7

    array-length v7, v7

    move v3, v7

    move v7, v3

    new-array v7, v7, [B

    move-object v4, v7

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {}, Lcom/tencent/open/utils/a;->a()Lcom/tencent/open/utils/m;

    move-result-object v7

    new-instance v8, Lcom/tencent/open/utils/m;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/tencent/open/utils/m;-><init>([B)V

    invoke-virtual {v7, v8}, Lcom/tencent/open/utils/m;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/net/ProtocolException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknow protocl ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move-object v7, v1

    array-length v7, v7

    move v8, v3

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-gt v7, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    new-array v7, v7, [B

    move-object v4, v7

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    new-instance v7, Lcom/tencent/open/utils/m;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v4

    invoke-direct {v8, v9}, Lcom/tencent/open/utils/m;-><init>([B)V

    invoke-virtual {v7}, Lcom/tencent/open/utils/m;->b()I

    move-result v7

    move v5, v7

    move-object v7, v1

    array-length v7, v7

    move v8, v3

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    move v8, v5

    if-ge v7, v8, :cond_3

    goto/16 :goto_0

    :cond_3
    move v7, v5

    new-array v7, v7, [B

    move-object v4, v7

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    move-object v7, v1

    array-length v7, v7

    move v8, v3

    sub-int/2addr v7, v8

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    move v6, v7

    move v7, v6

    if-lez v7, :cond_4

    move-object v7, v0

    move v8, v6

    new-array v8, v8, [B

    iput-object v8, v7, Lcom/tencent/open/utils/a$a;->b:[B

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/tencent/open/utils/a$a;->b:[B

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    :cond_4
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApkExternalInfo [p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/a$a;->a:Ljava/util/Properties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", otherData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/a$a;->b:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
