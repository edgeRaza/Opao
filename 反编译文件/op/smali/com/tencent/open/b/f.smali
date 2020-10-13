.class public Lcom/tencent/open/b/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# static fields
.field protected static final a:[Ljava/lang/String;

.field protected static b:Lcom/tencent/open/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "key"

    aput-object v3, v1, v2

    sput-object v0, Lcom/tencent/open/b/f;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, "sdk_report.db"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/f;
    .locals 5

    const-class v3, Lcom/tencent/open/b/f;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/open/b/f;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/open/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;

    :cond_0
    sget-object v0, Lcom/tencent/open/b/f;->b:Lcom/tencent/open/b/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v25, p0

    monitor-enter v25

    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v4, v17

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    move-object/from16 v2, v17

    :goto_0
    monitor-exit v25

    return-object v2

    :cond_0
    move-object/from16 v17, v2

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/tencent/open/b/f;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v17

    move-object/from16 v5, v17

    move-object/from16 v17, v5

    if-nez v17, :cond_1

    move-object/from16 v17, v4

    move-object/from16 v2, v17

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v6, v17

    const/16 v17, 0x0

    move-object/from16 v7, v17

    move-object/from16 v17, v5

    :try_start_2
    const-string v18, "via_cgi_report"

    const/16 v19, 0x0

    const-string v20, "type = ?"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    const/16 v23, 0x0

    move-object/from16 v24, v3

    aput-object v24, v22, v23

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v6, v17

    move-object/from16 v17, v6

    if-eqz v17, :cond_5

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_5

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    :cond_2
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    const-string v19, "blob"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v17

    move-object/from16 v8, v17

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v8

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v9, v17

    const/16 v17, 0x0

    move-object/from16 v10, v17

    const/16 v17, 0x0

    move-object/from16 v11, v17

    :try_start_3
    new-instance v17, Ljava/io/ObjectInputStream;

    move-object/from16 v26, v17

    move-object/from16 v17, v26

    move-object/from16 v18, v26

    move-object/from16 v19, v9

    invoke-direct/range {v18 .. v19}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v10, v17

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/Serializable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v11, v17

    move-object/from16 v17, v10

    if-eqz v17, :cond_3

    move-object/from16 v17, v10

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    :goto_1
    move-object/from16 v17, v9

    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    move-object/from16 v17, v11

    if-eqz v17, :cond_4

    move-object/from16 v17, v4

    move-object/from16 v18, v11

    :try_start_6
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v17

    :cond_4
    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v17

    if-nez v17, :cond_2

    :cond_5
    move-object/from16 v17, v6

    if-eqz v17, :cond_6

    move-object/from16 v17, v6

    :try_start_7
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    move-object/from16 v17, v7

    if-eqz v17, :cond_7

    move-object/from16 v17, v7

    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :goto_3
    const/16 v17, 0x0

    move-object/from16 v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v17, v5

    :try_start_9
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_8
    :goto_4
    move-object/from16 v17, v4

    move-object/from16 v2, v17

    goto/16 :goto_0

    :catch_0
    move-exception v17

    move-object/from16 v12, v17

    goto :goto_1

    :catch_1
    move-exception v17

    move-object/from16 v12, v17

    goto :goto_2

    :catch_2
    move-exception v17

    move-object/from16 v12, v17

    move-object/from16 v17, v10

    if-eqz v17, :cond_9

    move-object/from16 v17, v10

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    :goto_5
    move-object/from16 v17, v9

    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v17

    move-object/from16 v12, v17

    goto :goto_5

    :catch_4
    move-exception v17

    move-object/from16 v12, v17

    goto :goto_2

    :catchall_0
    move-exception v17

    move-object/from16 v13, v17

    move-object/from16 v17, v10

    if-eqz v17, :cond_a

    move-object/from16 v17, v10

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_a
    :goto_6
    move-object/from16 v17, v9

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :goto_7
    move-object/from16 v17, v13

    :try_start_e
    throw v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catch_5
    move-exception v17

    move-object/from16 v8, v17

    :try_start_f
    const-string v17, "openSDK_LOG.ReportDatabaseHelper"

    const-string v18, "getReportItemFromDB has exception."

    move-object/from16 v19, v8

    invoke-static/range {v17 .. v19}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object/from16 v17, v6

    if-eqz v17, :cond_b

    move-object/from16 v17, v6

    :try_start_10
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_b
    move-object/from16 v17, v7

    if-eqz v17, :cond_c

    move-object/from16 v17, v7

    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    :goto_8
    const/16 v17, 0x0

    move-object/from16 v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v17, v5

    :try_start_12
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    :catch_6
    move-exception v17

    move-object/from16 v14, v17

    goto :goto_6

    :catch_7
    move-exception v17

    move-object/from16 v14, v17

    goto :goto_7

    :catch_8
    move-exception v17

    move-object/from16 v8, v17

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    monitor-exit v25

    throw v2

    :catch_9
    move-exception v17

    move-object/from16 v8, v17

    move-object/from16 v17, v8

    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v17

    move-object/from16 v15, v17

    move-object/from16 v17, v6

    if-eqz v17, :cond_d

    move-object/from16 v17, v6

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_d
    move-object/from16 v17, v7

    if-eqz v17, :cond_e

    move-object/from16 v17, v7

    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_e
    :goto_9
    const/16 v17, 0x0

    move-object/from16 v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v17, v5

    :try_start_15
    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_f
    move-object/from16 v17, v15

    throw v17

    :catch_a
    move-exception v17

    move-object/from16 v16, v17

    move-object/from16 v17, v16

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_9
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v18, p0

    monitor-enter v18

    move-object v14, v2

    :try_start_0
    invoke-interface {v14}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v14

    move v3, v14

    move v14, v3

    if-nez v14, :cond_0

    :goto_0
    monitor-exit v18

    return-void

    :cond_0
    move v14, v3

    const/16 v15, 0x14

    if-gt v14, v15, :cond_1

    move v14, v3

    :goto_1
    move v3, v14

    move-object v14, v1

    :try_start_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_0

    :cond_1
    const/16 v14, 0x14

    goto :goto_1

    :cond_2
    move-object v14, v0

    move-object v15, v1

    invoke-virtual {v14, v15}, Lcom/tencent/open/b/f;->b(Ljava/lang/String;)V

    move-object v14, v0

    invoke-virtual {v14}, Lcom/tencent/open/b/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    move-object v4, v14

    move-object v14, v4

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    move-object v14, v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v14

    const/4 v14, 0x0

    move v6, v14

    :goto_2
    move v14, v6

    move v15, v3

    if-ge v14, v15, :cond_9

    move-object v14, v2

    move v15, v6

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/Serializable;

    move-object v7, v14

    move-object v14, v7

    if-eqz v14, :cond_5

    move-object v14, v5

    const-string v15, "type"

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x200

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v14

    const/4 v14, 0x0

    move-object v9, v14

    :try_start_3
    new-instance v14, Ljava/io/ObjectOutputStream;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v14

    move-object v14, v9

    move-object v15, v7

    invoke-virtual {v14, v15}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v9

    if-eqz v14, :cond_4

    move-object v14, v9

    :try_start_4
    invoke-virtual {v14}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_3
    move-object v14, v8

    :try_start_5
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    move-object v14, v5

    :try_start_6
    const-string v15, "blob"

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object v14, v4

    const-string v15, "via_cgi_report"

    const/16 v16, 0x0

    move-object/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    :cond_5
    move-object v14, v5

    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v14

    move-object v10, v14

    goto :goto_3

    :catch_1
    move-exception v14

    move-object v10, v14

    goto :goto_4

    :catch_2
    move-exception v14

    move-object v10, v14

    move-object v14, v9

    if-eqz v14, :cond_6

    move-object v14, v9

    :try_start_7
    invoke-virtual {v14}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    :goto_5
    move-object v14, v8

    :try_start_8
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v14

    move-object v10, v14

    goto :goto_5

    :catch_4
    move-exception v14

    move-object v10, v14

    goto :goto_4

    :catchall_0
    move-exception v14

    move-object v11, v14

    move-object v14, v9

    if-eqz v14, :cond_7

    move-object v14, v9

    :try_start_9
    invoke-virtual {v14}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_7
    :goto_6
    move-object v14, v8

    :try_start_a
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    move-object v14, v11

    :try_start_b
    throw v14
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_5
    move-exception v14

    move-object v5, v14

    :try_start_c
    const-string v14, "openSDK_LOG.ReportDatabaseHelper"

    const-string v15, "saveReportItemToDB has exception."

    invoke-static {v14, v15}, Lcom/tencent/open/a/f;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v14, v4

    :try_start_d
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v14, 0x0

    move-object v15, v4

    if-eq v14, v15, :cond_8

    move-object v14, v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_8
    :goto_8
    goto/16 :goto_0

    :catch_6
    move-exception v14

    move-object v12, v14

    goto :goto_6

    :catch_7
    move-exception v14

    move-object v12, v14

    goto :goto_7

    :cond_9
    move-object v14, v4

    :try_start_e
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v14, v4

    :try_start_f
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v14, 0x0

    move-object v15, v4

    if-eq v14, v15, :cond_8

    move-object v14, v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catchall_1
    move-exception v14

    move-object v13, v14

    move-object v14, v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v14, 0x0

    move-object v15, v4

    if-eq v14, v15, :cond_a

    move-object v14, v4

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    move-object v14, v13

    throw v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v18

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v12, p0

    monitor-enter v12

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit v12

    return-void

    :cond_0
    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Lcom/tencent/open/b/f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v2

    :try_start_2
    const-string v6, "via_cgi_report"

    const-string v7, "type = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    const/4 v5, 0x0

    move-object v6, v2

    if-eq v5, v6, :cond_2

    move-object v5, v2

    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    :try_start_4
    const-string v5, "openSDK_LOG.ReportDatabaseHelper"

    const-string v6, "clearReportItem has exception."

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/tencent/open/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    move-object v6, v2

    if-eq v5, v6, :cond_2

    move-object v5, v2

    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    move-object v4, v5

    const/4 v5, 0x0

    move-object v6, v2

    if-eq v5, v6, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    move-object v5, v4

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string v3, "CREATE TABLE IF NOT EXISTS via_cgi_report( _id INTEGER PRIMARY KEY,key TEXT,type TEXT,blob BLOB);"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    const-string v5, "DROP TABLE IF EXISTS via_cgi_report"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/tencent/open/b/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
