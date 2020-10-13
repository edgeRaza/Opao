.class abstract Lcom/a/a/b/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field final synthetic e:Lcom/a/a/b/s;


# direct methods
.method private constructor <init>(Lcom/a/a/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/s$a;->e:Lcom/a/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/b/s;Lcom/a/a/b/s$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/b/s$a;-><init>(Lcom/a/a/b/s;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IIJ)Z
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method
