.class public Lcom/tencent/open/utils/k$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/tencent/open/utils/k$a;->b:J

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/tencent/open/utils/k$a;->c:J

    :cond_0
    return-void
.end method
