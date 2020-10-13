.class public Lcom/tencent/connect/auth/b;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/connect/auth/b$a;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/connect/auth/b;

.field static final synthetic d:Z

.field private static e:I


# instance fields
.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/auth/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/connect/auth/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/connect/auth/b;->d:Z

    const/4 v0, 0x0

    sput v0, Lcom/tencent/connect/auth/b;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/tencent/connect/auth/b;->b:Ljava/util/HashMap;

    move-object v1, v0

    const-string v2, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    iput-object v2, v1, Lcom/tencent/connect/auth/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/tencent/connect/auth/b;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/tencent/connect/auth/b;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/tencent/connect/auth/b;-><init>()V

    sput-object v0, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    :cond_0
    sget-object v0, Lcom/tencent/connect/auth/b;->a:Lcom/tencent/connect/auth/b;

    return-object v0
.end method

.method public static b()I
    .locals 3

    sget v0, Lcom/tencent/connect/auth/b;->e:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v2

    move v1, v2

    sput v1, Lcom/tencent/connect/auth/b;->e:I

    return v0
.end method


# virtual methods
.method public a(Lcom/tencent/connect/auth/b$a;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/tencent/connect/auth/b;->b()I

    move-result v4

    move v2, v4

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/tencent/connect/auth/b;->b:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 12

    move-object v0, p0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    move v1, v7

    const-string v7, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    array-length v7, v7

    move v3, v7

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    move v9, v3

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v7, v7

    move v6, v7

    move-object v7, v4

    move-object v8, v2

    move v9, v6

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    move-object v0, v7

    return-object v0
.end method
