.class public Lcn/mucang/sundial/android/log/write/LogFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/log/write/LogWriter;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogFileTag"


# instance fields
.field private currentIndex:I

.field public final entity:Lcn/mucang/sundial/android/log/db/LogEntity;

.field public final fileName:Ljava/lang/String;

.field private final startTime:J

.field public final type:Lcn/mucang/sundial/android/log/LogType;

.field private writer:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/sundial/android/log/LogType;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    .line 4
    iput-wide p3, p0, Lcn/mucang/sundial/android/log/write/LogFile;->startTime:J

    .line 5
    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->type:Lcn/mucang/sundial/android/log/LogType;

    .line 6
    invoke-static {p2, p1}, Lcn/mucang/sundial/android/log/db/LogDb;->add(Lcn/mucang/sundial/android/log/LogType;Ljava/lang/String;)Lcn/mucang/sundial/android/log/db/LogEntity;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "log\u5f00\u59cb\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private update(Ljava/io/File;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {v0, p2, p3}, Lcn/mucang/sundial/android/log/db/LogEntity;->setEndTime(J)V

    .line 3
    iget-object p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setSize(J)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/sundial/android/log/db/LogEntity;->setState(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->update(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    return-void
.end method


# virtual methods
.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFull()Z
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->currentIndex:I

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->type:Lcn/mucang/sundial/android/log/LogType;

    iget v1, v1, Lcn/mucang/sundial/android/log/LogType;->size:I

    if-ge v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->startTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->type:Lcn/mucang/sundial/android/log/LogType;

    iget v2, v2, Lcn/mucang/sundial/android/log/LogType;->interval:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public stop()V
    .locals 12

    const-string v0, ".zip"

    const-string v1, "-"

    .line 1
    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 4
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 7
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/log/LUtils;->compressFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 10
    invoke-direct {p0, v7, v5, v6}, Lcn/mucang/sundial/android/log/write/LogFile;->update(Ljava/io/File;J)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-direct {p0, v2, v5, v6}, Lcn/mucang/sundial/android/log/write/LogFile;->update(Ljava/io/File;J)V

    .line 12
    :goto_1
    iput-object v3, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_1
    const-string v4, "LogFileTag"

    .line 13
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    invoke-static {v2}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 15
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 18
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {v9}, Lcn/mucang/sundial/android/log/db/LogEntity;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/log/LUtils;->compressFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_2
    return-void

    :catchall_1
    move-exception v2

    .line 20
    iget-object v4, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 21
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 24
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcn/mucang/sundial/android/log/write/LogFile;->entity:Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-virtual {v10}, Lcn/mucang/sundial/android/log/db/LogEntity;->getStartTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcn/mucang/sundial/android/log/LUtils;->time(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogFile;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/sundial/android/log/LUtils;->compressFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 27
    invoke-direct {p0, v8, v6, v7}, Lcn/mucang/sundial/android/log/write/LogFile;->update(Ljava/io/File;J)V

    goto :goto_3

    .line 28
    :cond_2
    invoke-direct {p0, v4, v6, v7}, Lcn/mucang/sundial/android/log/write/LogFile;->update(Ljava/io/File;J)V

    .line 29
    :goto_3
    iput-object v3, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    .line 30
    throw v2
.end method

.method public write(Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFile-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/LogFile;->type:Lcn/mucang/sundial/android/log/LogType;

    iget-object v1, v1, Lcn/mucang/sundial/android/log/LogType;->dirName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, p2, p3}, Lcn/mucang/sundial/android/log/write/LogFile;->write([BLjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public write([BLjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    array-length p3, p1

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2
    iget-object p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->writer:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 3
    iget p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->currentIndex:I

    array-length p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lcn/mucang/sundial/android/log/write/LogFile;->currentIndex:I

    return-void
.end method
