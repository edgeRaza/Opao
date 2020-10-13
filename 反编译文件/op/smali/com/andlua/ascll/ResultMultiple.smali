.class public Lcom/andlua/ascll/ResultMultiple;
.super Ljava/lang/Object;
.source "ResultMultiple.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static str(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 7
    move-object v0, p0

    move-object v3, v0

    const-string v4, "[^a-zA-Z0-9]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
