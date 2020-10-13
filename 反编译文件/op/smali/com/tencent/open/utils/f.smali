.class public Lcom/tencent/open/utils/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/open/utils/f;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONObject;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/f;->a:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/tencent/open/utils/f;->f:J

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/tencent/open/utils/f;->g:I

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/tencent/open/utils/f;->h:Z

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Lcom/tencent/open/utils/f;->a()V

    move-object v3, v0

    invoke-direct {v3}, Lcom/tencent/open/utils/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/utils/f;I)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/tencent/open/utils/f;->g:I

    move v0, v2

    return v0
.end method

.method static synthetic a(Lcom/tencent/open/utils/f;)Landroid/content/Context;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    sget-object v5, Lcom/tencent/open/utils/f;->a:Ljava/util/Map;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v2, v6

    monitor-enter v5

    :try_start_0
    const-string v5, "openSDK_LOG.OpenConfig"

    const-string v6, "getInstance begin"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_0

    move-object v5, v1

    sput-object v5, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x0

    move-object v6, v1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    if-eq v5, v6, :cond_3

    sget-object v5, Lcom/tencent/open/utils/f;->b:Ljava/lang/String;

    move-object v1, v5

    :cond_1
    :goto_0
    sget-object v5, Lcom/tencent/open/utils/f;->a:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/open/utils/f;

    move-object v3, v5

    const/4 v5, 0x0

    move-object v6, v3

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/tencent/open/utils/f;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/tencent/open/utils/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v5

    sget-object v5, Lcom/tencent/open/utils/f;->a:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_2
    const-string v5, "openSDK_LOG.OpenConfig"

    const-string v6, "getInstance end"

    invoke-static {v5, v6}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v2

    monitor-exit v6

    move-object v0, v5

    return-object v0

    :cond_3
    const-string v5, "0"

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private a()V
    .locals 8

    move-object v0, p0

    move-object v3, v0

    const-string v4, "com.tencent.open.config.json"

    invoke-direct {v3, v4}, Lcom/tencent/open/utils/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    new-instance v4, Lorg/json/JSONObject;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, v3, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/utils/f;Lorg/json/JSONObject;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/tencent/open/utils/f;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x0

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Ljava/io/OutputStreamWriter;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move-object v6, v1

    move-object v3, v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string v3, "cgi back, do update"

    invoke-direct {v2, v3}, Lcom/tencent/open/utils/f;->d(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    move-object v2, v0

    const-string v3, "com.tencent.open.config.json"

    move-object v4, v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/tencent/open/utils/f;->f:J

    return-void
.end method

.method private b()V
    .locals 7

    move-object v0, p0

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Lcom/tencent/open/utils/f;->g:I

    if-eq v2, v3, :cond_0

    move-object v2, v0

    const-string v3, "update thread is running, return"

    invoke-direct {v2, v3}, Lcom/tencent/open/utils/f;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/tencent/open/utils/f;->g:I

    new-instance v2, Landroid/os/Bundle;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    move-object v2, v1

    const-string v3, "appid"

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "appid_for_getting_config"

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "status_os"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "status_machine"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "status_version"

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "sdkv"

    const-string v4, "3.3.0.lite"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    const-string v3, "sdkp"

    const-string v4, "a"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/open/utils/f$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/tencent/open/utils/f$1;-><init>(Lcom/tencent/open/utils/f;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/tencent/open/utils/f$1;->start()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x0

    move-object v2, v10

    const/4 v10, 0x0

    move-object v3, v10

    const-string v10, ""

    move-object v4, v10

    const/4 v10, 0x0

    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v2, v10

    :goto_1
    new-instance v10, Ljava/io/BufferedReader;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    new-instance v12, Ljava/io/InputStreamReader;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v2

    const-string v15, "UTF-8"

    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v10

    new-instance v10, Ljava/lang/StringBuffer;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v10

    const/4 v10, 0x0

    move-object v6, v10

    :goto_2
    const/4 v10, 0x0

    move-object v11, v3

    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v6, v12

    if-eq v10, v11, :cond_1

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    goto :goto_2

    :cond_0
    move-object v10, v1

    move-object v5, v10

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v5, v10

    move-object v10, v0

    :try_start_2
    iget-object v10, v10, Lcom/tencent/open/utils/f;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    move-object v2, v10

    goto :goto_1

    :catch_1
    move-exception v10

    move-object v6, v10

    move-object v10, v6

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v4

    move-object v0, v10

    :goto_3
    return-object v0

    :cond_1
    move-object v10, v5

    :try_start_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    move-object v4, v10

    move-object v10, v2

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    move-object v10, v3

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    move-object v10, v4

    move-object v0, v10

    goto :goto_3

    :catch_2
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    :try_start_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v10, v2

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    move-object v10, v3

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v10

    move-object v7, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v10

    move-object v8, v10

    move-object v10, v2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    move-object v10, v3

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_5
    move-object v10, v8

    throw v10

    :catch_5
    move-exception v10

    move-object v9, v10

    move-object v10, v9

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private c()V
    .locals 10

    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    const-string v7, "Common_frequency"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    const/4 v6, 0x0

    move v7, v1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    move v1, v6

    :cond_0
    move v6, v1

    const v7, 0x36ee80

    mul-int/2addr v6, v7

    int-to-long v6, v6

    move-wide v2, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-wide v4, v6

    move-wide v6, v4

    move-object v8, v0

    iget-wide v8, v8, Lcom/tencent/open/utils/f;->f:J

    sub-long/2addr v6, v8

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    move-object v6, v0

    invoke-direct {v6}, Lcom/tencent/open/utils/f;->b()V

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/tencent/open/utils/f;->h:Z

    if-eqz v2, :cond_0

    const-string v2, "openSDK_LOG.OpenConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; appid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/tencent/open/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/open/utils/f;->d(Ljava/lang/String;)V

    move-object v2, v0

    invoke-direct {v2}, Lcom/tencent/open/utils/f;->c()V

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/open/utils/f;->d(Ljava/lang/String;)V

    move-object v3, v0

    invoke-direct {v3}, Lcom/tencent/open/utils/f;->c()V

    move-object v3, v0

    iget-object v3, v3, Lcom/tencent/open/utils/f;->e:Lorg/json/JSONObject;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    const/4 v3, 0x0

    move-object v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method
