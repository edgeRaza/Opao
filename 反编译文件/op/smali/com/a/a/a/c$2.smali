.class Lcom/a/a/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/c;->restoreUiState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/a/a/a/c;


# direct methods
.method constructor <init>(Lcom/a/a/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/a/c$2;->b:Lcom/a/a/a/c;

    iput p2, p0, Lcom/a/a/a/c$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/c$2;->b:Lcom/a/a/a/c;

    iget v1, p0, Lcom/a/a/a/c$2;->a:I

    invoke-virtual {v0, v1}, Lcom/a/a/a/c;->moveCaret(I)V

    return-void
.end method
