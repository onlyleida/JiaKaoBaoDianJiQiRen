.class public Lcom/nirvana/tools/logger/cache/db/ACMLogDatabase;
.super Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nirvana/tools/logger/cache/db/AbstractDatabase<",
        "Lcom/nirvana/tools/logger/model/ACMLoggerRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_DATABASE_NAME:Ljava/lang/String; = "logger.db"

.field private static final TAG:Ljava/lang/String; = "ALICOM_LoggerDao"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    new-instance v8, Lcom/nirvana/tools/logger/cache/db/DBHelper;

    sget-object v5, Lcom/nirvana/tools/logger/cache/db/DBHelpTool;->SQL_CREATE_ENTRIES_LOGGER:Ljava/lang/String;

    sget-object v7, Lcom/nirvana/tools/logger/cache/db/DBHelpTool;->INDEX_CREATE_LOGGER:Ljava/lang/String;

    const-string v2, "logger.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v6, "DROP TABLE IF EXISTS alitx_logger"

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/nirvana/tools/logger/cache/db/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "alitx_logger"

    invoke-direct {p0, p1, v8}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;-><init>(Ljava/lang/String;Lcom/nirvana/tools/logger/cache/db/DBHelper;)V

    return-void
.end method


# virtual methods
.method protected getContentValuesByRecord(Lcom/nirvana/tools/logger/model/ACMLoggerRecord;)Landroid/content/ContentValues;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMRecord;->getStrategy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "strategy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMRecord;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMRecord;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMLoggerRecord;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMRecord;->getUploadFlag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "upload_flag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/nirvana/tools/logger/model/ACMRecord;->getUploadCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "upload_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method protected bridge synthetic getContentValuesByRecord(Lcom/nirvana/tools/logger/model/ACMRecord;)Landroid/content/ContentValues;
    .locals 0

    check-cast p1, Lcom/nirvana/tools/logger/model/ACMLoggerRecord;

    invoke-virtual {p0, p1}, Lcom/nirvana/tools/logger/cache/db/ACMLogDatabase;->getContentValuesByRecord(Lcom/nirvana/tools/logger/model/ACMLoggerRecord;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected parseDataFromCursor(Landroid/database/Cursor;)Lcom/nirvana/tools/logger/model/ACMLoggerRecord;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/nirvana/tools/logger/model/ACMLoggerRecord;

    invoke-direct {v0}, Lcom/nirvana/tools/logger/model/ACMLoggerRecord;-><init>()V

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nirvana/tools/logger/model/ACMRecord;->setId(J)V

    const-string v1, "level"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMLoggerRecord;->setLevel(I)V

    const-string v1, "strategy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMRecord;->setStrategy(I)V

    const-string v1, "content"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMRecord;->setContent(Ljava/lang/String;)V

    const-string v1, "upload_flag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMRecord;->setUploadFlag(I)V

    const-string v1, "upload_count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nirvana/tools/logger/model/ACMRecord;->setUploadCount(I)V

    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nirvana/tools/logger/model/ACMRecord;->setTimestamp(J)V

    return-object v0
.end method

.method protected bridge synthetic parseDataFromCursor(Landroid/database/Cursor;)Lcom/nirvana/tools/logger/model/ACMRecord;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nirvana/tools/logger/cache/db/ACMLogDatabase;->parseDataFromCursor(Landroid/database/Cursor;)Lcom/nirvana/tools/logger/model/ACMLoggerRecord;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized queryLog(JJIII)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIII)",
            "Ljava/util/List<",
            "Lcom/nirvana/tools/logger/model/ACMLoggerRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v0, p6

    monitor-enter p0

    :try_start_0
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "level="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-lez v10, :cond_0

    const-string v10, " and timestamp"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " >= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmp-long v2, v4, v8

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "and timestamp <= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-ltz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "and upload_flag = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-lez p5, :cond_3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object/from16 v16, v6

    const-string v0, "ALICOM_LoggerDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query: selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirvana/tools/logger/utils/ConsoleLogUtils;->logcatV(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->getReadDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v9, "alitx_logger"

    const/4 v10, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Lcom/nirvana/tools/logger/cache/db/ACMLogDatabase;->parseDataFromCursor(Landroid/database/Cursor;)Lcom/nirvana/tools/logger/model/ACMLoggerRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, "ALICOM_LoggerDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query: result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nirvana/tools/logger/utils/ConsoleLogUtils;->logcatV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/nirvana/tools/logger/cache/db/AbstractDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
