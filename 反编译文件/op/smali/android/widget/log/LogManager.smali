.class public final Landroid/widget/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static logger:Landroid/widget/log/Logger;


# direct methods
.method static final constructor <clinit>()V
    .locals 5

    new-instance v2, Landroid/widget/log/LoggerDefault;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/widget/log/LoggerDefault;-><init>()V

    sput-object v2, Landroid/widget/log/LogManager;->logger:Landroid/widget/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger()Landroid/widget/log/Logger;
    .locals 3

    sget-object v2, Landroid/widget/log/LogManager;->logger:Landroid/widget/log/Logger;

    move-object v0, v2

    return-object v0
.end method

.method public static setLogger(Landroid/widget/log/Logger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/log/Logger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Landroid/widget/log/LogManager;->logger:Landroid/widget/log/Logger;

    return-void
.end method
