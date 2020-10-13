.class public Lcom/tencent/open/b/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a()I
    .locals 3

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v1

    const-string v2, "Common_HttpRetryCount"

    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    move v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    move v0, v1

    :cond_0
    move v1, v0

    move v0, v1

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v2, 0x64

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    invoke-static {v2, v3}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v2

    const-string v3, "Common_BusinessReportFrequency"

    invoke-virtual {v2, v3}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    move v2, v1

    if-nez v2, :cond_1

    const/16 v2, 0x64

    move v1, v2

    :cond_1
    move v2, v1

    move v0, v2

    goto :goto_0
.end method
