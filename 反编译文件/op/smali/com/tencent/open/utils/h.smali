.class public Lcom/tencent/open/utils/h;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 3

    move-object v0, p0

    const-string v1, "shareToQQ"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2777

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v1, "shareToQzone"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2778

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "addToQQFavorites"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2779

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v1, "sendToMyComputer"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x277a

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "shareToTroopBar"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x277b

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v1, "action_login"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x2b5d

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v1, "action_request"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x2774

    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    if-nez v7, :cond_0

    move-object v7, v1

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move-object v7, v0

    if-eqz v7, :cond_1

    move-object v7, v1

    if-nez v7, :cond_1

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v0

    if-nez v7, :cond_2

    move-object v7, v1

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    :cond_2
    move-object v7, v0

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object v7, v1

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move-object v8, v2

    :try_start_0
    array-length v8, v8

    if-ge v7, v8, :cond_5

    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_5

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    move v7, v5

    move v8, v6

    if-ge v7, v8, :cond_3

    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    :cond_3
    move v7, v5

    move v8, v6

    if-le v7, v8, :cond_4

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v7, v2

    array-length v7, v7

    move v8, v4

    if-le v7, v8, :cond_6

    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_6
    move-object v7, v3

    array-length v7, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v4

    if-le v7, v8, :cond_7

    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    :cond_7
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-wide/16 v6, 0x0

    move-wide v2, v6

    const/4 v6, 0x0

    move v4, v6

    const/16 v6, 0x2000

    new-array v6, v6, [B

    move-object v5, v6

    :goto_0
    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    move-object v9, v5

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v10, v6

    move v6, v10

    move v7, v10

    move v4, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    move-object v6, v1

    move-object v7, v5

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    move-wide v6, v2

    move v8, v4

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    goto :goto_0

    :cond_0
    const-string v6, "openSDK_LOG.SystemUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->copy, copyed size is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v2

    move-wide v0, v6

    return-wide v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    move v0, p0

    move v1, v0

    const/16 v2, 0x2777

    if-ne v1, v2, :cond_0

    const-string v1, "shareToQQ"

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move v1, v0

    const/16 v2, 0x2778

    if-ne v1, v2, :cond_1

    const-string v1, "shareToQzone"

    move-object v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    const/16 v2, 0x2779

    if-ne v1, v2, :cond_2

    const-string v1, "addToQQFavorites"

    move-object v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    const/16 v2, 0x277a

    if-ne v1, v2, :cond_3

    const-string v1, "sendToMyComputer"

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    const/16 v2, 0x277b

    if-ne v1, v2, :cond_4

    const-string v1, "shareToTroopBar"

    move-object v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    const/16 v2, 0x2b5d

    if-ne v1, v2, :cond_5

    const-string v1, "action_login"

    move-object v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    const/16 v2, 0x2774

    if-ne v1, v2, :cond_6

    const-string v1, "action_request"

    move-object v0, v1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :goto_0
    return-object v0

    :catch_0
    move-exception v5

    move-object v4, v5

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string v9, "openSDK_LOG.SystemUtils"

    const-string v10, "OpenUi, validateAppSignatureForPackage"

    invoke-static {v9, v10}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    move-object v10, v1

    const/16 v11, 0x40

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_1

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    move-object v9, v7

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/open/utils/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move v0, v9

    :goto_1
    return v0

    :catch_0
    move-exception v9

    move-object v4, v9

    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v13, "openSDK_LOG.SystemUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->extractSecureLib, libName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v13

    move-object v3, v13

    move-object v13, v3

    if-nez v13, :cond_0

    const-string v13, "openSDK_LOG.SystemUtils"

    const-string v14, "-->extractSecureLib, global context is null. "

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move v0, v13

    :goto_0
    return v0

    :cond_0
    move-object v13, v3

    const-string v14, "secure_lib"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object v4, v13

    new-instance v13, Ljava/io/File;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v3

    invoke-virtual {v15}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v13

    move-object v13, v5

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    move-object v13, v5

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    move-object v6, v13

    move-object v13, v6

    if-eqz v13, :cond_1

    move-object v13, v6

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v5

    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :cond_1
    :goto_1
    const/4 v13, 0x0

    move-object v6, v13

    const/4 v13, 0x0

    move-object v7, v13

    move-object v13, v3

    :try_start_1
    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    move-object v6, v13

    move-object v13, v3

    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    move-object v7, v13

    move-object v13, v6

    move-object v14, v7

    invoke-static {v13, v14}, Lcom/tencent/open/utils/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v13

    move-object v13, v4

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object v8, v13

    move-object v13, v8

    const-string v14, "version"

    move v15, v2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object v13, v8

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    const/4 v13, 0x1

    move v9, v13

    move-object v13, v6

    if-eqz v13, :cond_2

    move-object v13, v6

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    move-object v13, v7

    if-eqz v13, :cond_3

    move-object v13, v7

    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    move v13, v9

    move v0, v13

    goto :goto_0

    :catch_0
    move-exception v13

    move-object v7, v13

    move-object v13, v7

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move-object v13, v4

    const-string v14, "version"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    move v6, v13

    const-string v13, "openSDK_LOG.SystemUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-->extractSecureLib, libVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " | oldVersion: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/tencent/open/a/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v2

    move v14, v6

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    move v0, v13

    goto/16 :goto_0

    :catch_1
    move-exception v13

    move-object v10, v13

    goto :goto_2

    :catch_2
    move-exception v13

    move-object v10, v13

    goto :goto_3

    :catch_3
    move-exception v13

    move-object v8, v13

    :try_start_4
    const-string v13, "openSDK_LOG.SystemUtils"

    const-string v14, "-->extractSecureLib, when copy lib execption."

    move-object v15, v8

    invoke-static {v13, v14, v15}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v13, v6

    if-eqz v13, :cond_5

    move-object v13, v6

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_4
    move-object v13, v7

    if-eqz v13, :cond_6

    move-object v13, v7

    :try_start_6
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_5
    const/4 v13, 0x0

    move v0, v13

    goto/16 :goto_0

    :catch_4
    move-exception v13

    move-object v8, v13

    goto :goto_4

    :catch_5
    move-exception v13

    move-object v8, v13

    goto :goto_5

    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v6

    if-eqz v13, :cond_7

    move-object v13, v6

    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_6
    move-object v13, v7

    if-eqz v13, :cond_8

    move-object v13, v7

    :try_start_8
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_8
    :goto_7
    move-object v13, v11

    throw v13

    :catch_6
    move-exception v13

    move-object v12, v13

    goto :goto_6

    :catch_7
    move-exception v13

    move-object v12, v13

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    const-string v10, "openSDK_LOG.SystemUtils"

    const-string v11, "OpenUi, getSignValidString"

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, ""

    move-object v2, v10

    move-object v10, v0

    :try_start_0
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    move-object v11, v3

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object v6, v10

    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    move-object v7, v10

    move-object v10, v7

    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    move-object v10, v7

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/open/utils/k;->a([B)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    const-string v10, "openSDK_LOG.SystemUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->sign: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v7

    move-object v11, v9

    invoke-static {v11}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    move-object v10, v7

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/open/utils/k;->a([B)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    move-object v10, v7

    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    const-string v10, "openSDK_LOG.SystemUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "-->signEncryped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v10, v2

    move-object v0, v10

    return-object v0

    :catch_0
    move-exception v10

    move-object v3, v10

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v10, "openSDK_LOG.SystemUtils"

    const-string v11, "OpenUi, getSignValidString error"

    move-object v12, v3

    invoke-static {v10, v11, v12}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.tencent.mobileqq"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const-string v4, "com.tencent.tim"

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/tencent/open/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method
