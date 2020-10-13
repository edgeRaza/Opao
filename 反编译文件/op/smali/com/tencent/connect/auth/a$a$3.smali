.class Lcom/tencent/connect/auth/a$a$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/a$a;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/tencent/connect/auth/a$a;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/a$a;Landroid/webkit/SslErrorHandler;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/tencent/connect/auth/a$a$3;->b:Lcom/tencent/connect/auth/a$a;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/connect/auth/a$a$3;->a:Landroid/webkit/SslErrorHandler;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$a$3;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v3}, Landroid/webkit/SslErrorHandler;->cancel()V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/a$a$3;->b:Lcom/tencent/connect/auth/a$a;

    iget-object v3, v3, Lcom/tencent/connect/auth/a$a;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {v3}, Lcom/tencent/connect/auth/a;->dismiss()V

    return-void
.end method
