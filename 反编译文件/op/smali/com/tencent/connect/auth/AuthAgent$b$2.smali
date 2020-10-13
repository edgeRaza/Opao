.class Lcom/tencent/connect/auth/AuthAgent$b$2;
.super Lcom/tencent/connect/auth/AuthAgent$b$a;
.source "ProGuard"


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
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/tencent/connect/auth/AuthAgent$b$2;->c:Lcom/tencent/connect/auth/AuthAgent$b;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/tencent/connect/auth/AuthAgent$b$2;->a:Lcom/tencent/tauth/IUiListener;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/tencent/connect/auth/AuthAgent$b$2;->b:Ljava/lang/Object;

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/tencent/connect/auth/AuthAgent$b$a;-><init>(Lcom/tencent/connect/auth/AuthAgent$b;Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$2;->d:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$2;->d:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$2;->d:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$2;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/connect/auth/AuthAgent$b$2;->a:Lcom/tencent/tauth/IUiListener;

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$b$2;->b:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
