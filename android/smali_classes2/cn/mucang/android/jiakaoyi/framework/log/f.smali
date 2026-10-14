.class public Lcn/mucang/android/jiakaoyi/framework/log/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/framework/log/i;",
            "Lcn/mucang/android/jiakaoyi/framework/log/l/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Runnable;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/i/b;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/log/j/a;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/framework/log/j/a;-><init>()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/i;->b()[Lcn/mucang/android/jiakaoyi/framework/log/i;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 6
    sget-object v7, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/log/l/f;

    new-instance v9, Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-direct {v9, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/l/i/c;Lcn/mucang/android/jiakaoyi/framework/log/j/b;)V

    invoke-direct {v8, v9, v6}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/e;Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/f$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f$a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->b:Ljava/lang/Runnable;

    .line 8
    sput-boolean v4, Lcn/mucang/android/jiakaoyi/framework/log/f;->c:Z

    return-void
.end method

.method private static A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/f;->j()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->p:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->q:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->m:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
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

.method public static e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->o:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->j:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
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

.method public static g(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->s:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error faceLogin :"

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

.method public static h(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->t:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error hp :"

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

.method private static declared-synchronized j()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/framework/log/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcn/mucang/android/jiakaoyi/framework/log/f;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/framework/log/f;->c:Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/f;->b:Ljava/lang/Runnable;

    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic k(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\u5173\u952e\u70b9\u65e5\u5fd7\u4e0a\u4f20\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : \u4e0a\u4f20\u5173\u952e\u70b9\u4fe1\u53f7\u65e5\u5fd7\u5931\u8d25 : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic l(JJLcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p4, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    invoke-static {p0, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->e(JJI)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p3, p0, v0

    if-nez p3, :cond_0

    .line 3
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->y(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    .line 5
    invoke-static {p4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide p2

    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-static {p4, p1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
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

    :cond_2
    return-void
.end method

.method static synthetic m(Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 7

    .line 1
    :try_start_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->d(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->y(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    .line 5
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, v1}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 8
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

    :cond_2
    return-void
.end method

.method static synthetic n(Ljava/lang/String;)V
    .locals 11

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4f20\u5173\u952e\u70b9\u539f\u59cb\u4fe1\u53f7\u65e5\u5fd7\u5f53\u524did : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_1

    :goto_0
    cmp-long v7, v1, v5

    if-nez v7, :cond_0

    .line 4
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x1

    sub-long/2addr v1, v7

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->stop()V

    .line 7
    :goto_1
    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-nez v9, :cond_2

    .line 8
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    const/4 v7, 0x2

    if-ge v4, v7, :cond_3

    int-to-long v7, v4

    sub-long v7, v1, v7

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u4e0a\u4f20\u5173\u952e\u70b9\u539f\u59cb\u4fe1\u53f7\u65e5\u5fd7\u6700\u7ec8id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 12
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v7, v3, v5

    if-gtz v7, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    :try_start_1
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->c(J)Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v3}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    .line 17
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u65e5\u5fd7entity\u5931\u8d25 : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_3

    .line 18
    :cond_6
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "\u4e0a\u4f20\u5173\u952e\u70b9\u539f\u59cb\u4fe1\u53f7\u65e5\u5fd7\u5931\u8d25 : \u6ca1\u6709\u627e\u5230\u9700\u8981\u4e0a\u4f20\u7684\u65e5\u5fd7"

    .line 19
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void

    .line 20
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    .line 21
    new-instance v2, Lcn/mucang/android/jiakaoyi/framework/log/a;

    invoke-direct {v2, v1, p0}, Lcn/mucang/android/jiakaoyi/framework/log/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;Ljava/lang/String;)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/k/a;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5173\u952e\u70b9\u539f\u59cb\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public static o(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->i:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
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

.method public static p(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->r:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static q(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->n:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static r(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error signal ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogsTag"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static s([BLjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/i;->l:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->write([BLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error signal ::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogsTag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static t()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

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

    check-cast v1, Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static u(JJ)V
    .locals 5

    cmp-long v0, p0, p2

    if-gtz v0, :cond_1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/i;->b()[Lcn/mucang/android/jiakaoyi/framework/log/i;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    sget-object v4, Lcn/mucang/android/jiakaoyi/framework/log/i;->u:Lcn/mucang/android/jiakaoyi/framework/log/i;

    if-eq v3, v4, :cond_0

    .line 4
    invoke-static {v3, p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->w(Lcn/mucang/android/jiakaoyi/framework/log/i;JJ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static v(Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/log/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/k/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static w(Lcn/mucang/android/jiakaoyi/framework/log/i;JJ)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/framework/log/d;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/d;-><init>(JJLcn/mucang/android/jiakaoyi/framework/log/i;)V

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/k/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static x()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/mucang/android/core/api/exception/InternalException;,
            Lcn/mucang/android/core/api/exception/HttpException;,
            Lcn/mucang/android/core/api/exception/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/log/i;->b()[Lcn/mucang/android/jiakaoyi/framework/log/i;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v1

    const-string v2, "LogTag"

    if-eqz v1, :cond_0

    const-string v1, "\u4e0a\u4f20\u5168\u90e8"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    .line 5
    iget-boolean v5, v4, Lcn/mucang/android/jiakaoyi/framework/log/i;->h:Z

    if-eqz v5, :cond_7

    .line 6
    iget v5, v4, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/db/a;->d(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_2

    .line 8
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-virtual {v7}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v9

    invoke-interface {v9}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    .line 9
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v5}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    .line 12
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->y(Lcn/mucang/android/jiakaoyi/framework/log/i;)V

    goto/16 :goto_3

    .line 13
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    .line 14
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0a\u4f20entity : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_5
    invoke-virtual {v6}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v9

    invoke-interface {v9}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->entityId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-eqz v11, :cond_4

    .line 17
    :try_start_0
    invoke-static {v4, v6}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 18
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 19
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private static y(Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 14

    const-string v0, ".zip"

    const-string v1, "LogTag"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/g;->d(Lcn/mucang/android/jiakaoyi/framework/log/i;)Ljava/lang/String;

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

    if-eqz v2, :cond_9

    .line 5
    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    aget-object v6, v2, v5

    .line 7
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4e0a\u4f20\u6587\u4ef6 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->A(Lcn/mucang/android/jiakaoyi/framework/log/i;)Lcn/mucang/android/jiakaoyi/framework/log/l/h;

    move-result-object v7

    .line 11
    invoke-interface {v7}, Lcn/mucang/android/jiakaoyi/framework/log/l/h;->b()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 13
    :cond_4
    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;-><init>()V

    .line 14
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setDirName(Ljava/lang/String;)V

    .line 15
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setTypeName(Ljava/lang/String;)V

    .line 16
    iget v8, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->f:I

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setType(I)V

    .line 17
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setFile(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setSize(J)V

    .line 19
    invoke-virtual {v7, v4}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setState(I)V

    .line 20
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v10, "."

    const-string v11, ""

    if-eqz v9, :cond_5

    .line 22
    :try_start_1
    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x13

    .line 23
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-static {v12}, Lcn/mucang/android/jiakaoyi/framework/log/g;->c(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setStartTime(J)V

    .line 25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v9, :cond_6

    const/16 v9, 0x14

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "txt"

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-static {v8}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_6

    .line 28
    :try_start_2
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/log/g;->c(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setEndTime(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 29
    :cond_5
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->g:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 30
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/framework/log/i;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/log/g;->c(Ljava/lang/String;)J

    move-result-wide v8

    .line 32
    invoke-virtual {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;->setStartTime(J)V

    .line 33
    :catchall_0
    :cond_6
    :goto_1
    invoke-static {p0, v7}, Lcn/mucang/android/jiakaoyi/framework/log/k/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Lcn/mucang/android/jiakaoyi/framework/log/db/LogEntity;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    .line 34
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_3
    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u5173\u952e\u70b9\u539f\u59cb\u4fe1\u53f7\u65e5\u5fd7 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/log/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/log/c;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
