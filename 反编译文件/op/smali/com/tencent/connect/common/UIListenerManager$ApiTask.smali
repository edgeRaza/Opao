.class public Lcom/tencent/connect/common/UIListenerManager$ApiTask;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/UIListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/common/UIListenerManager;

.field public mListener:Lcom/tencent/tauth/IUiListener;

.field public mRequestCode:I


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/UIListenerManager;ILcom/tencent/tauth/IUiListener;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->a:Lcom/tencent/connect/common/UIListenerManager;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mRequestCode:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/tencent/connect/common/UIListenerManager$ApiTask;->mListener:Lcom/tencent/tauth/IUiListener;

    return-void
.end method
