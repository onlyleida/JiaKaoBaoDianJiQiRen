.class public Lcn/mucang/android/jiakaoyi/framework/log/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/log/l/h;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/io/FileOutputStream;

.field private c:I

.field public final d:Lcn/mucang/android/jiakaoyi/framework/log/i;

.field private final e:J

.field public final f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/log/i;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521b\u5efa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b:Ljava/io/FileOutputStream;

    .line 6
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->e:J

    .line 7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    .line 8
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->a(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    if-eqz p1, :cond_1

    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "log\u5f00\u59cb\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/io/File;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setEndTime(J)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setSize(J)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setState(I)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->f(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->c:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/framework/log/i;->d:I

    if-ge v2, v4, :cond_1

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->e:J

    sub-long v4, v0, v4

    iget v2, v3, Lcn/mucang/android/jiakaoyi/framework/log/i;->c:I

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/framework/log/i;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->e:J

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public stop()V
    .locals 11

    const-string v0, "\u5220\u9664\u53ea\u6709\u4e00\u884c\u7684\u6587\u4ef6:"

    const-string v1, "LogTag"

    const-string v2, ".zip"

    const-string v3, "-"

    .line 1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b:Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    .line 2
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b:Ljava/io/FileOutputStream;

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 5
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/g;->h(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 9
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getStartTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/log/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 12
    invoke-direct {p0, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d(Ljava/io/File;J)V

    goto/16 :goto_2

    .line 13
    :cond_1
    invoke-direct {p0, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d(Ljava/io/File;J)V

    goto/16 :goto_2

    .line 14
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_1
    const-string v6, "LogFileTag"

    .line 18
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 20
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/g;->h(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 24
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getStartTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/log/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 26
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 28
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catchall_1
    move-exception v5

    .line 30
    invoke-static {v4}, Lcn/mucang/android/core/utils/o;->a(Ljava/io/Closeable;)V

    .line 31
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/g;->h(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 35
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v9}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/framework/log/g;->g(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/framework/log/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 38
    invoke-direct {p0, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d(Ljava/io/File;J)V

    goto :goto_3

    .line 39
    :cond_5
    invoke-direct {p0, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d(Ljava/io/File;J)V

    goto :goto_3

    .line 40
    :cond_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->f:Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I

    .line 41
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 42
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_7
    :goto_3
    throw v5
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

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->n:Lcn/mucang/android/jiakaoyi/framework/log/i;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->j:Lcn/mucang/android/jiakaoyi/framework/log/i;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    if-eq v0, v2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogFile-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |LogFile-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->d:Lcn/mucang/android/jiakaoyi/framework/log/i;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/e;->a(ILjava/lang/String;)V

    .line 7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->write([BLjava/lang/String;J)V

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
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b:Ljava/io/FileOutputStream;

    array-length p3, p1

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->b:Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->c:I

    array-length p1, p1

    add-int/2addr p2, p1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/g;->c:I

    return-void
.end method
