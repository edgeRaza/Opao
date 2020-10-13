.class public final Lcom/tencent/open/utils/m;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/tencent/open/utils/m;->a:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/tencent/open/utils/m;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    iput v4, v3, Lcom/tencent/open/utils/m;->a:I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/tencent/open/utils/m;->a:I

    move-object v5, v1

    move v6, v2

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    iput v4, v3, Lcom/tencent/open/utils/m;->a:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 6

    move-object v0, p0

    const/4 v2, 0x2

    new-array v2, v2, [B

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Lcom/tencent/open/utils/m;->a:I

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget v4, v4, Lcom/tencent/open/utils/m;->a:I

    const v5, 0xff00

    and-int/2addr v4, v5

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public b()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/open/utils/m;->a:I

    move v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/tencent/open/utils/m;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget v2, v2, Lcom/tencent/open/utils/m;->a:I

    move-object v3, v1

    check-cast v3, Lcom/tencent/open/utils/m;

    invoke-virtual {v3}, Lcom/tencent/open/utils/m;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/tencent/open/utils/m;->a:I

    move v0, v1

    return v0
.end method
