.class public Lcom/mycompany/myapp/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field private static final seconds_of_15days:I = 0x13c680

.field private static final seconds_of_1day:I = 0x15180

.field private static final seconds_of_1hour:I = 0xe10

.field private static final seconds_of_1minute:I = 0x3c

.field private static final seconds_of_1year:I = 0x1da9c00

.field private static final seconds_of_30days:I = 0x278d00

.field private static final seconds_of_30minutes:I = 0x708

.field private static final seconds_of_6months:I = 0xed4e00


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeRange(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 26
    move-object v0, p0

    new-instance v10, Ljava/text/SimpleDateFormat;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string v12, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    .line 27
    new-instance v10, Ljava/util/Date;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v3, v10

    .line 28
    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 29
    const/4 v10, 0x0

    check-cast v10, Ljava/util/Date;

    move-object v5, v10

    .line 32
    move-object v10, v2

    move-object v11, v4

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    move-object v3, v10

    .line 33
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v5, v10

    .line 39
    :goto_0
    move-object v10, v3

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    move-object v12, v5

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/16 v12, 0x3e8

    int-to-long v12, v12

    div-long/2addr v10, v12

    move-wide v6, v10

    .line 40
    move-wide v10, v6

    long-to-int v10, v10

    move v8, v10

    .line 41
    move v10, v8

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_0

    .line 43
    const-string v10, "\u521a\u521a"

    move-object v0, v10

    .line 77
    :goto_1
    return-object v0

    .line 33
    :catch_0
    move-exception v10

    move-object v6, v10

    .line 37
    move-object v10, v6

    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 45
    :cond_0
    move v10, v8

    const/16 v11, 0x708

    if-ge v10, v11, :cond_1

    .line 47
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v8

    const/16 v12, 0x3c

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\u5206\u949f\u524d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 49
    :cond_1
    move v10, v8

    const/16 v11, 0xe10

    if-ge v10, v11, :cond_2

    .line 51
    const-string v10, "\u534a\u5c0f\u65f6\u524d"

    move-object v0, v10

    goto :goto_1

    .line 53
    :cond_2
    move v10, v8

    const v11, 0x15180

    if-ge v10, v11, :cond_3

    .line 55
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v8

    const/16 v12, 0xe10

    div-int/lit16 v11, v11, 0xe10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\u5c0f\u65f6\u524d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 57
    :cond_3
    move v10, v8

    const v11, 0x13c680

    if-ge v10, v11, :cond_4

    .line 59
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v8

    const v12, 0x15180

    div-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\u5929\u524d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_1

    .line 61
    :cond_4
    move v10, v8

    const v11, 0x278d00

    if-ge v10, v11, :cond_5

    .line 63
    const-string v10, "\u534a\u4e2a\u6708\u524d"

    move-object v0, v10

    goto/16 :goto_1

    .line 65
    :cond_5
    move v10, v8

    const v11, 0xed4e00

    if-ge v10, v11, :cond_6

    .line 67
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v8

    const v12, 0x278d00

    div-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\u6708\u524d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 69
    :cond_6
    move v10, v8

    const v11, 0x1da9c00

    if-ge v10, v11, :cond_7

    .line 71
    const-string v10, "\u534a\u5e74\u524d"

    move-object v0, v10

    goto/16 :goto_1

    .line 73
    :cond_7
    move v10, v8

    const v11, 0x1da9c00

    if-lt v10, v11, :cond_8

    .line 75
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v8

    const v12, 0x1da9c00

    div-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\u5e74\u524d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_1

    .line 77
    :cond_8
    const-string v10, ""

    move-object v0, v10

    goto/16 :goto_1
.end method
