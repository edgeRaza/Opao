.class public Lcom/tencent/open/utils/HttpUtils$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/open/utils/HttpUtils$a;->a:Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/tencent/open/utils/HttpUtils$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/tencent/open/utils/HttpUtils$1;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/tencent/open/utils/HttpUtils$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method
