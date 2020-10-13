.class public Lcom/andlua/string/number;
.super Ljava/lang/Object;
.source "number.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    .line 7
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_0

    const-string v6, ""

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 18
    :goto_0
    return v0

    .line 11
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .line 12
    const/4 v6, 0x0

    move v4, v6

    .line 13
    :goto_1
    move-object v6, v0

    move-object v7, v1

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    move v9, v6

    move v6, v9

    move v7, v9

    move v4, v7

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 18
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 15
    :cond_2
    move v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    move v4, v6

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
