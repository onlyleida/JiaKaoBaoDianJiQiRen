.class public Lcn/mucang/android/jiakaoyi/framework/log/db/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setStartTime(J)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setState(I)V

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setType(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setTypeName(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setDirName(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

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

.method public static b(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)I
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/core/db/a;->h(Ljava/lang/Class;J)I

    move-result p0

    monitor-exit v0

    return p0

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(J)Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v1, v2, p0, p1}, Lcn/mucang/android/core/db/a;->m(Ljava/lang/Class;J)Lcn/mucang/android/core/db/IdEntity;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v1

    const-class v2, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    const-string v3, "select * from t_log where type=? order by start_time asc"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    .line 4
    invoke-static {v3, v4}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(JJI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmp-long v3, p0, p2

    if-gez v3, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object v3

    const-class v4, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    const-string v5, "select * from t_log where start_time<=? and start_time>=? and type=? and state=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v2

    const/4 p0, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p0

    const/4 p0, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, p0

    .line 4
    invoke-static {v5, v6}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

    move-result-object p0

    const-class p1, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    const-string p2, "select * from t_log where state=?"

    new-array p3, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p2, p3}, Lcn/mucang/android/core/db/e;->d(Ljava/lang/String;[Ljava/lang/String;)Lcn/mucang/android/core/db/e;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/core/db/a;->y(Ljava/lang/Class;Lcn/mucang/android/core/db/e;)Ljava/util/List;

    move-result-object p0

    .line 6
    :goto_0
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/consts/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/f/a;->a()Lcn/mucang/android/core/db/a;

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
