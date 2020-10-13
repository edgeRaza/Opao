.class public final Lcom/tencent/open/a/e;
.super Lcom/tencent/open/a/i;
.source "ProGuard"


# static fields
.field public static final a:Lcom/tencent/open/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tencent/open/a/e;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/tencent/open/a/e;-><init>()V

    sput-object v0, Lcom/tencent/open/a/e;->a:Lcom/tencent/open/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/tencent/open/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v1

    sparse-switch v8, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    :sswitch_1
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    :sswitch_2
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    :sswitch_3
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    :sswitch_4
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    :sswitch_5
    move-object v8, v5

    move-object v9, v6

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method
