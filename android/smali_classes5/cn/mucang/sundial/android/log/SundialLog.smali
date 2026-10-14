.class public Lcn/mucang/sundial/android/log/SundialLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogsTag"

.field private static final writers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/sundial/android/log/LogType;",
            "Lcn/mucang/sundial/android/log/write/LogWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/sundial/android/log/SundialLog;->writers:Ljava/util/Map;

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;

    invoke-direct {v0}, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/sundial/android/log/prefix/DefaultWrapOutput;

    invoke-direct {v1}, Lcn/mucang/sundial/android/log/prefix/DefaultWrapOutput;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/sundial/android/log/LogType;->values()[Lcn/mucang/sundial/android/log/LogType;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 6
    sget-object v6, Lcn/mucang/sundial/android/log/SundialLog;->writers:Ljava/util/Map;

    new-instance v7, Lcn/mucang/sundial/android/log/write/LogExe;

    new-instance v8, Lcn/mucang/sundial/android/log/write/LogDirectory;

    invoke-direct {v8, v5, v0, v1}, Lcn/mucang/sundial/android/log/write/LogDirectory;-><init>(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/write/end/StopWriter;Lcn/mucang/sundial/android/log/prefix/WrapOutput;)V

    invoke-direct {v7, v8, v5}, Lcn/mucang/sundial/android/log/write/LogExe;-><init>(Lcn/mucang/sundial/android/log/write/LogWriter;Lcn/mucang/sundial/android/log/LogType;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(JLcn/mucang/sundial/android/log/LogType;)V
    .locals 7

    .line 1
    :try_start_0
    iget v0, p2, Lcn/mucang/sundial/android/log/LogType;->type:I

    invoke-static {p0, p1, v0}, Lcn/mucang/sundial/android/log/db/LogDb;->list(JI)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p2}, Lcn/mucang/sundial/android/log/SundialLog;->uploadFile(Lcn/mucang/sundial/android/log/LogType;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/log/db/LogEntity;

    .line 5
    invoke-static {p2}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/sundial/android/log/write/LogWriter;->stop()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    :goto_0
    invoke-interface {p1}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p2, p0}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    .line 13
    invoke-static {p2}, Lcn/mucang/sundial/android/log/LUtils;->checkInValid(Lcn/mucang/sundial/android/log/LogType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TAG"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic b(Lcn/mucang/sundial/android/log/LogType;)V
    .locals 10

    .line 1
    :try_start_0
    iget v0, p0, Lcn/mucang/sundial/android/log/LogType;->type:I

    invoke-static {v0}, Lcn/mucang/sundial/android/log/db/LogDb;->list(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lcn/mucang/sundial/android/log/SundialLog;->uploadFile(Lcn/mucang/sundial/android/log/LogType;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/log/db/LogEntity;

    .line 5
    invoke-static {p0}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 7
    invoke-interface {v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->stop()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 9
    :goto_1
    invoke-interface {v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x2710

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {p0, v1}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p0}, Lcn/mucang/sundial/android/log/LUtils;->checkInValid(Lcn/mucang/sundial/android/log/LogType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static com(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/sundial/android/log/LogType;->Com:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error com :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static gps(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/sundial/android/log/LogType;->GPS:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error gps :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static normal(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/sundial/android/log/LogType;->Normal:Lcn/mucang/sundial/android/log/LogType;

    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/sundial/android/log/write/LogWriter;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error normal :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/SundialLog;->writers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/android/log/write/LogWriter;

    invoke-interface {v1}, Lcn/mucang/sundial/android/log/write/LogWriter;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static upload(J)V
    .locals 4

    .line 5
    invoke-static {}, Lcn/mucang/sundial/android/log/LogType;->values()[Lcn/mucang/sundial/android/log/LogType;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 7
    invoke-static {v3, p0, p1}, Lcn/mucang/sundial/android/log/SundialLog;->upload(Lcn/mucang/sundial/android/log/LogType;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static upload(Lcn/mucang/sundial/android/log/LogType;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/sundial/android/log/a;

    invoke-direct {v1, p0}, Lcn/mucang/sundial/android/log/a;-><init>(Lcn/mucang/sundial/android/log/LogType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static upload(Lcn/mucang/sundial/android/log/LogType;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/sundial/android/log/b;

    invoke-direct {v1, p1, p2, p0}, Lcn/mucang/sundial/android/log/b;-><init>(JLcn/mucang/sundial/android/log/LogType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static uploadAll()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/log/LogType;->values()[Lcn/mucang/sundial/android/log/LogType;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 3
    iget-boolean v4, v3, Lcn/mucang/sundial/android/log/LogType;->realTimeUpload:Z

    if-eqz v4, :cond_2

    .line 4
    iget v4, v3, Lcn/mucang/sundial/android/log/LogType;->type:I

    invoke-static {v4}, Lcn/mucang/sundial/android/log/db/LogDb;->list(I)Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->uploadFile(Lcn/mucang/sundial/android/log/LogType;)V

    goto :goto_2

    .line 7
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/sundial/android/log/db/LogEntity;

    .line 8
    invoke-virtual {v5}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;

    move-result-object v8

    invoke-interface {v8}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-eqz v10, :cond_1

    .line 9
    invoke-static {v3, v5}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static uploadFile(Lcn/mucang/sundial/android/log/LogType;)V
    .locals 12

    const-string v0, "."

    const-string v1, ".zip"

    .line 1
    invoke-static {p0}, Lcn/mucang/sundial/android/log/LUtils;->dir(Lcn/mucang/sundial/android/log/LogType;)Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 5
    array-length v3, v2

    if-lez v3, :cond_5

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 7
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    new-instance v7, Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-direct {v7}, Lcn/mucang/sundial/android/log/db/LogEntity;-><init>()V

    .line 9
    iget-object v8, p0, Lcn/mucang/sundial/android/log/LogType;->dirName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/mucang/sundial/android/log/db/LogEntity;->setDirName(Ljava/lang/String;)V

    .line 10
    iget-object v8, p0, Lcn/mucang/sundial/android/log/LogType;->typeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/mucang/sundial/android/log/db/LogEntity;->setTypeName(Ljava/lang/String;)V

    .line 11
    iget v8, p0, Lcn/mucang/sundial/android/log/LogType;->type:I

    invoke-virtual {v7, v8}, Lcn/mucang/sundial/android/log/db/LogEntity;->setType(I)V

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/mucang/sundial/android/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->setSize(J)V

    .line 14
    invoke-virtual {v7, v4}, Lcn/mucang/sundial/android/log/db/LogEntity;->setState(I)V

    .line 15
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, ""

    if-eqz v8, :cond_2

    .line 17
    :try_start_1
    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x13

    .line 18
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x14

    .line 19
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-static {v8}, Lcn/mucang/sundial/android/log/LUtils;->convert(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->setStartTime(J)V

    .line 21
    invoke-static {v6}, Lcn/mucang/sundial/android/log/LUtils;->convert(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->setEndTime(J)V

    goto :goto_1

    .line 22
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcn/mucang/sundial/android/log/LogType;->suffix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcn/mucang/sundial/android/log/LogType;->suffix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {v6}, Lcn/mucang/sundial/android/log/LUtils;->convert(Ljava/lang/String;)J

    move-result-wide v8

    .line 25
    invoke-virtual {v7, v8, v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->setStartTime(J)V

    .line 26
    :cond_3
    :goto_1
    invoke-static {p0, v7}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static with(Lcn/mucang/sundial/android/log/LogType;)Lcn/mucang/sundial/android/log/write/LogWriter;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/SundialLog;->writers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/sundial/android/log/write/LogWriter;

    return-object p0
.end method
