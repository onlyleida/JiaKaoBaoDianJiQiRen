.class public Lcn/mucang/sundial/android/log/db/LogDb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcn/mucang/sundial/android/log/LogType;Ljava/lang/String;)Lcn/mucang/sundial/android/log/db/LogEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/log/db/LogEntity;

    invoke-direct {v0}, Lcn/mucang/sundial/android/log/db/LogEntity;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/log/db/LogEntity;->setStartTime(J)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setState(I)V

    .line 5
    iget p1, p0, Lcn/mucang/sundial/android/log/LogType;->type:I

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setType(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/android/log/LogType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->setTypeName(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcn/mucang/sundial/android/log/LogType;->dirName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/mucang/sundial/android/log/db/LogEntity;->setDirName(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcn/mucang/sundial/android/log/Consts;->DbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/db/a;->u(Lcn/mucang/android/core/db/IdEntity;)V

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static delete(Lcn/mucang/sundial/android/log/db/LogEntity;)V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/Consts;->DbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static list(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/log/db/LogEntity;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lcn/mucang/sundial/android/log/Consts;->DbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/sundial/android/log/db/LogEntity;

    const-string v3, "select * from t_log where type=? order by start_time asc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    .line 17
    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static list(JI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/log/db/LogEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/Consts;->DbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/sundial/android/log/db/LogEntity;

    const-string v3, "select * from t_log where start_time<=? and end_time>=? and type=? and state=?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 4
    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/sundial/android/log/db/LogEntity;

    const-string v3, "select * from t_log where start_time<=? and type=? order by start_time desc"

    new-array v4, v8, [Ljava/lang/String;

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v7

    .line 9
    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 12
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static update(Lcn/mucang/sundial/android/log/db/LogEntity;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/Consts;->DbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/sundial/android/log/db/JDb;->db()Lcn/mucang/android/core/db/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/mucang/android/core/db/a;->E(Lcn/mucang/android/core/db/IdEntity;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
