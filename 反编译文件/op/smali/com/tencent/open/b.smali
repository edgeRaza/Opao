.class public abstract Lcom/tencent/open/b;
.super Landroid/app/Dialog;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/open/a;

.field protected final b:Landroid/webkit/WebChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v3, v0

    new-instance v4, Lcom/tencent/open/b$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/tencent/open/b$1;-><init>(Lcom/tencent/open/b;)V

    iput-object v4, v3, Lcom/tencent/open/b;->b:Landroid/webkit/WebChromeClient;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    move-object v2, v0

    new-instance v3, Lcom/tencent/open/a;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/tencent/open/a;-><init>()V

    iput-object v3, v2, Lcom/tencent/open/b;->a:Lcom/tencent/open/a;

    return-void
.end method
