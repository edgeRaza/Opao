.class public final Lcom/tencent/open/utils/l;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/tencent/open/utils/l;->a:J

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 8

    move-object v0, p0

    const/4 v2, 0x4

    new-array v2, v2, [B

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-wide v4, v4, Lcom/tencent/open/utils/l;->a:J

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x1

    move-object v4, v0

    iget-wide v4, v4, Lcom/tencent/open/utils/l;->a:J

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x2

    move-object v4, v0

    iget-wide v4, v4, Lcom/tencent/open/utils/l;->a:J

    const-wide/32 v6, 0xff0000

    and-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    const/4 v3, 0x3

    move-object v4, v0

    iget-wide v4, v4, Lcom/tencent/open/utils/l;->a:J

    const-wide v6, 0xff000000L

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public b()J
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/open/utils/l;->a:J

    move-wide v0, v1

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/tencent/open/utils/l;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    iget-wide v2, v2, Lcom/tencent/open/utils/l;->a:J

    move-object v4, v1

    check-cast v4, Lcom/tencent/open/utils/l;

    invoke-virtual {v4}, Lcom/tencent/open/utils/l;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/tencent/open/utils/l;->a:J

    long-to-int v1, v1

    move v0, v1

    return v0
.end method
