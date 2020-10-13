.class Lcom/tencent/connect/auth/AuthAgent$b$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthAgent$b;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/IUiListener;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/tencent/connect/auth/AuthAgent$b;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$b;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/connect/auth/AuthAgent$b$3;->c:Lcom/tencent/connect/auth/AuthAgent$b;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tencent/connect/auth/AuthAgent$b$3;->a:Lcom/tencent/tauth/IUiListener;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/tencent/connect/auth/AuthAgent$b$3;->b:Ljava/lang/Object;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$3;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$3;->a:Lcom/tencent/tauth/IUiListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b$3;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
