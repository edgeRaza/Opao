.class public Lcom/tencent/tauth/UiError;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/tencent/tauth/UiError;->errorCode:I

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    return-void
.end method
